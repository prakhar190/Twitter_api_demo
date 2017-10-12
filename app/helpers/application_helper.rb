module ApplicationHelper

  def get_class_for_table_row(index)
    if index % 4 == 1
      return 'success'
    elsif index % 4 == 2
      return 'danger'
    elsif index % 4 == 2
      return 'info'
    else
      return 'warning'
    end
  end
end
