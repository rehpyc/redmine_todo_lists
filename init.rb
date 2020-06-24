Redmine::Plugin.register :redmine_todo_lists do
  name        'Redmine Todo Lists plugin'
  author      'David.Ou'
  description 'This plugin provides todo list management features.'
  version     '0.0.1'
  url         'https://github.com/rehpyc/redmine_todo_lists'
  author_url  'https://github.com/rehpyc'

  project_module :todo_lists do
    permission :view_todos, { todos:  [:index, :show] }
    permission :edit_todos, { todos:  [:new, :create, :edit, :update, :destory, :toggle_complete, :sort],
                              issues: [:new, :create, :edit, :update, :destory, :toggle_complete, :sort] }
    permission :personal_todos, { mytodos: [:index, :new, :create, :edit, :update, :destory, :toggle_complete, :sort] }
  end

end