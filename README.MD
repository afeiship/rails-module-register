#rails-module-signup
> Rails module for signup.

## common cmds:
```conf
gem -v 查看 RubyGems 的版本  
gem update --system 升級RubyGems的版本  
gem install gem_name 安裝gem包  
gem list 列出所有已安裝的gem包  
gem update gem_name 更新某个gem包  
gem update 更新所有已安裝的gem包  
gem install -v x.x.x gemname 安裝特定版本  
gem uninstall gem_name 卸载  
```

## rails signup:
+ Create model:
```bash
# model:
rails g model user name:string email:string password_digest:string
rake db:migrate

# controller:
rails g controller users signup

# ruby routes:
# get 'signup' => 'users/signup', :as => 'signup'
```
