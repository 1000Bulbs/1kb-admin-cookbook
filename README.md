# 1kb-admin-cookbook

Configures an "admin" system user with sudo privileges on a server and adds the public SSH keys from a given set of Github users.

This is just an easy way to add a shared admin account with password-less `sudo` to a server.

## Supported Platforms

Ubuntu 12.04LTS

## Attributes

<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['1kb-admin']['user_name']</tt></td>
    <td>String</td>
    <td>name of the user account to configure</td>
    <td><tt>admin</tt></td>
  </tr>
  <tr>
    <td><tt>['1kb-admin']['github_users']</tt></td>
    <td>Array of strings</td>
    <td>list of Github usernames for which to pull public keys</td>
    <td><tt>[]</tt></td>
  </tr>
</table>

## Usage

### 1kb-admin::default

Include `1kb-admin` in your node's `run_list`:

```json
{
  "run_list": [
    "recipe[1kb-admin::default]"
  ]
}
```

## Contributing

1. Fork the repository on Github
2. Create a named feature branch (i.e. `add-new-recipe`)
3. Write your change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request

## License and Authors

Author:: Zachary Danger Campbell (<zcampbell@1000bulbs.com>)
