#if (${PACKAGE_NAME} && ${PACKAGE_NAME} != "")package ${PACKAGE_NAME}

import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.hannesdorfmann.adapterdelegates4.AbsListItemAdapterDelegate

#end
#parse("File Header.java")
class ${NAME}ViewAdapterDelegate :
    AbsListItemAdapterDelegate<Any, Any, ${NAME}ViewAdapterDelegate.ViewHolder>() {

    override fun isForViewType(o: Any, l: List<Any>, i: Int) =
        o is ${NAME}ViewModel

    override fun onCreateViewHolder(viewGroup: ViewGroup): ViewHolder {
        val view = ${NAME}View(viewGroup.context)
        view.layoutParams = RecyclerView.LayoutParams(
            RecyclerView.LayoutParams.WRAP_CONTENT,
            RecyclerView.LayoutParams.MATCH_PARENT
        )
        return ViewHolder(view)
    }

    override fun onBindViewHolder(item: Any, viewHolder: ViewHolder, list: MutableList<Any>) {
        viewHolder.view.setViewModel(item as ${NAME}ViewModel)
    }

    class ViewHolder(val view: ${NAME}View) : RecyclerView.ViewHolder(view)
}
