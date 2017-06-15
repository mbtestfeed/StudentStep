/**
 * Created by mbtestfeed on 15/06/17.
 */

function next_task() {
    console.log("WONK");

    var next_text = '<%= @next = @tasks.where(parent_task: @first).first.text %>';
    console.log(next_text);
}