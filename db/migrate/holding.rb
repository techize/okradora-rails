# Devise

#       t.references :tenant, null: false, foreign_key: { to_table: tenants }
#       t.references :location, null: true, foreign_key: {to_table: location}

# ToDo

#       t.references :user, null: false, foreign_key: true

# Tasks

#       t.references :owner, null: false, foreign_key: { to_table: users }      
#       t.references :group, null: false, foreign_key: {to_table: groups }
#       t.references :tenant, null: false, foreign_key: { to_table: tenants }
#       t.references :project, null: false, foreign_key: { to_table: project }

# Tenants

#       t.references :admin, null: false, foreign_key: { to_table: user }
#       t.references :billing, null: false, foreign_key: { to_table: user }
#       t.references :tech, null: false, foreign_key: { to_table: user }
#       t.references :mainsite, null: false, foreign_key: { to_table: location }

# Locations

#      t.references :tenant, null: false, foreign_key: { to_table: tenants }

# Notes

#      t.references :owner, null: false, foreign_key: {to_table: user }

# Projects

#       t.references :owner, null: false, foreign_key: {to_table: user }

# Groups

#             add_reference :groups :parent_group, null: false, foreign_key: { to_table: groups }
#             add_reference :groups, :tenant, null: false, foreign_key: { to_table: tenants }
#             add_reference :groups, :owner, null: false, foreign_key: {to_table: user }

# Labels

#       add_reference :labels, :group, null: false, foreign_key: {to_table: groups }
#       add_reference :labels, :tenant, null: false, foreign_key: { to_table: tenants }
#       add_reference :labels, :owner, null: false, foreign_key: { to_table: users }

# Task Times

#       add_reference :task_times, :task, null: false, foreign_key: {to_table: tasks}
#       add_reference :task_times, :user, null: false, foreign_key: {to_table: user }
#       t.bigint :minutes

Permissions
      add_reference :permissions, :created_by, null: false, foreign_key: {to_table: :user }
      add_reference :permissions, :updated_by, null: false, foreign_key: {to_table: :user }

Initatives

      Notes
      project
      tenant
      group
      owner
      

