module PlansHelper
  def tasks_in_plan(plan)
    tasks_in_order = []

    parent_task = nil
    while(task = plan.tasks.where(parent_task: parent_task).first)
      tasks_in_order.append(task)
      parent_task = task
    end
    return tasks_in_order
  end
end
