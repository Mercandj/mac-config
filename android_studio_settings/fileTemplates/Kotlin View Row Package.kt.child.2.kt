#if (${PACKAGE_NAME} && ${PACKAGE_NAME} != "")package ${PACKAGE_NAME}.${FEATURE}

import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.hannesdorfmann.adapterdelegates4.AbsListItemAdapterDelegate

#end
#parse("File Header.java")
class ${NAME}AdapterDelegate :
    AbsListItemAdapterDelegate<Any, Any, ${NAME}AdapterDelegate.ViewHolder>() {

    override fun isForViewType(o: Any, l: List<Any>, i: Int) =
        o is ${NAME}Model

    override fun onCreateViewHolder(viewGroup: ViewGroup): ViewHolder {
        val view = ${NAME}(viewGroup.context)
        view.layoutParams = RecyclerView.LayoutParams(
            RecyclerView.LayoutParams.MATCH_PARENT,
            RecyclerView.LayoutParams.WRAP_CONTENT
        )
        return ViewHolder(view)
    }

    override fun onBindViewHolder(item: Any, viewHolder: ViewHolder, list: MutableList<Any>) {
        viewHolder.view.setViewModel(item as ${NAME}Model)
    }

    class ViewHolder(val view: ${NAME}) : RecyclerView.ViewHolder(view)
}
