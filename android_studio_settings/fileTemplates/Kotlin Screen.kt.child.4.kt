#if (${PACKAGE_NAME} && ${PACKAGE_NAME} != "")package ${PACKAGE_NAME}

#end
#parse("File Header.java")
class ${NAME}ViewManagerImpl : ${NAME}ViewManager {

    private val listeners = ArrayList<${NAME}ViewManager.Listener>()
    private var viewModel: ${NAME}ViewModel? = null

    override fun getViewModel(): ${NAME}ViewModel? {
        return viewModel
    }

    override fun setViewModel(viewModel: ${NAME}ViewModel?) {
        if (this.viewModel == viewModel) {
            return
        }
        this.viewModel = viewModel
        for (listener in listeners) {
            listener.onChanged()
        }
    }

    override fun addListener(listener: ${NAME}ViewManager.Listener) {
        if (listeners.contains(listener)) {
            return
        }
        listeners.add(listener)
    }
    
    override fun removeListener(listener: ${NAME}ViewManager.Listener) {
        listeners.remove(listener)
    }
}
