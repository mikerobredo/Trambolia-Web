{"filter":false,"title":"20170515102424_create_users.rb","tooltip":"/db/migrate/20170515102424_create_users.rb","undoManager":{"mark":0,"position":0,"stack":[[{"start":{"row":0,"column":0},"end":{"row":6,"column":0},"action":"remove","lines":["class CreateUsers < ActiveRecord::Migration","  def change","    create_table :users do |t|","    end","  end","end",""],"id":2,"ignore":true},{"start":{"row":0,"column":0},"end":{"row":25,"column":0},"action":"insert","lines":["class CreateUsers < ActiveRecord::Migration","  def change","    create_table :users do |t|","      t.string :name, :null => false, :unique => true","      t.string :login, :null => false, :unique => true","      t.string :email, :null => false, :unique => true","      t.string :crypted_password, :null => false","      t.string :password_salt, :null => false","      t.string :persistence_token, :null => false","      t.string :perishable_token, :null => false # optional, used for reset password functionality","","      #t.string :single_access_token, :null => false # optional, see Authlogic::Session::Params","","      # magic fields (all optional, see Authlogic::Session::MagicColumns)","      t.integer :login_count, :null => false, :default => 0","      t.integer :failed_login_count, :null => false, :default => 0","      t.datetime :last_request_at","      t.datetime :current_login_at","      t.datetime :last_login_at","      t.string :current_login_ip","      t.string :last_login_ip","      t.timestamps","    end","  end","end",""]}]]},"ace":{"folds":[],"scrolltop":0,"scrollleft":0,"selection":{"start":{"row":0,"column":0},"end":{"row":0,"column":0},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":0},"timestamp":1494843874494,"hash":"6641ffac319cf5329b54283fced57e561fe91369"}