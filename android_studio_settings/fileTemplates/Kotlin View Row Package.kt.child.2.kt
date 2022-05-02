#if (${PACKAGE_NAME} && ${PACKAGE_NAME} != "")package ${PACKAGE_NAME}.${NAME}

import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.hannesdorfmann.adapterdelegates4.AbsListItemAdapterDelegate

#end
#parse("File Header.java")
#set ($FEATURE_CAMEL_CASE = ${StringUtils.removeAndHump(${NAME}, "_")})
class ${FEATURE_CAMEL_CASE}AdapterDelegate :
    AbsListItemAdapterDelegate<Any, Any, ${FEATURE_CAMEL_CASE}AdapterDelegate.ViewHolder>() {

    override fun isForViewType(o: Any, l: List<Any>, i: Int) =
        o is ${FEATURE_CAMEL_CASE}Model

    override fun onCreateViewHolder(viewGroup: ViewGroup): ViewHolder {
        val view = ${FEATURE_CAMEL_CASE}(viewGroup.context)
        view.layoutParams = RecyclerView.LayoutParams(
            RecyclerView.LayoutParams.MATCH_PARENT,
            RecyclerView.LayoutParams.WRAP_CONTENT
        )
        return ViewHolder(view)
    }

    override fun onBindViewHolder(item: Any, viewHolder: ViewHolder, list: MutableList<Any>) {
        viewHolder.view.setViewModel(item as ${FEATURE_CAMEL_CASE}Model)
    }

    class ViewHolder(val view: ${FEATURE_CAMEL_CASE}) : RecyclerView.ViewHolder(view)
}
