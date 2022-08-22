const axios = require('axios').default;

const COACHES_LIST = [
  'boniatti.rodrigo@gmail.com',
  'vinicius+coach@vanta.gg',
  "hasanalsabonchi@gmail.com",
  "hasan@vanta.gg",
  "tim@nonameyet.com",
  "farid@nonameyet.com",
  "anthony@nonameyet.com",
  "amitai@nonameyet.com",
  "george@nonameyet.com",
  "polly@nonameyet.com"
]

const MODERATORS_LIST = [
  'johncoldzsavage@gmail.com',
  'bethaperry8@gmail.com',
  'j_williams13@hotmail.com',
  'jruhl82@aol.com',
  'marcusli1996@yahoo.com',
  'nathanguerrero00@yahoo.com',
  'nicki@vanta.gg',
  'sai@vanta.gg',
  'sirapat.kasemsamran@gmail.com',
  'zack+moderator@vanta.gg',
  'rodrigo+moderator@vanta.gg',
  'vinicius+moderator@vanta.gg',
  'kyle+moderator@vanta.gg',
  'hasan+moderator@vanta.gg',
  'ahernandez@vanta.gg'
]

const setUserRole = async (event, role) => {
  const ManagementClient = require("auth0").ManagementClient;

  const management = new ManagementClient({
    domain: event.secrets.DOMAIN,
    clientId: event.secrets.CLIENT_ID,
    clientSecret: event.secrets.CLIENT_SECRET,
    scope: "read:roles create:role_members",
  });

  const getRoleId = async (roleName) => {    
    const roles = await management.getRoles({ per_page: 10, page: 0 });
    return roles.find(role => role.name === roleName)['id'];
  }

  const assignRoleToUser = async (userId, roleId) => {
    const data = { "users" : [ userId ] }
    const roleData = { id: roleId };
    await management.roles.assignUsers(roleData, data);
  }

  const roleId = await getRoleId(role)

  try {
    await assignRoleToUser(event.user.user_id, roleId)
  } catch (e) {
    console.log(e);
  }
}

exports.onExecutePostLogin = async (event, api) => {
  const { roles } = event.authorization;
  const invitationsApproved = await axios.post(event.secrets.GRAPHQL_API, {
    query: `query invitationRequest($receiverEmail:String!, $status: String!) {
      invitations(receiverEmail:$receiverEmail, status: $status) {
        status
      }
    }`,
    variables: { receiverEmail: event.user.email, status: 'approved' }
  });

  const baseUrl = event.request.query['initial_domain'];
  api.user.setAppMetadata('currentDomain', baseUrl);

  if (COACHES_LIST.includes(event.user.email)) {
    await setUserRole(event, 'coach');
  } else if (MODERATORS_LIST.includes(event.user.email)) {
    await setUserRole(event, 'moderator');
  } else if (invitationsApproved.data['data']['invitations'].length) {
    await setUserRole(event, 'child');
  } else if (roles.length == 0 && api.redirect.canRedirect()) {
    const options = {
      query: {
        auth0_domain: `${event.tenant.id}.us.auth0.com`,
      },
    };

    api.redirect.sendUserTo(`${baseUrl}/role-form`, options);
  }
};

exports.onContinuePostLogin = async (event, api) => {
  const { role } = event.request.body;
  
  if (role === "child" || role === "parent" || role === "school" || role === "organization") {
    await setUserRole(event, role);
  } else {
    return api.access.deny("User did not select a role");
  }
};
