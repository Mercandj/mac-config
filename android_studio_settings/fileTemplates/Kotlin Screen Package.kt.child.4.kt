#if (${PACKAGE_NAME} && ${PACKAGE_NAME} != "")package ${PACKAGE_NAME}.${FEATURE}

#end
#parse("File Header.java")
class ${NAME}ManagerImpl : ${NAME}Manager {

    private val listeners = ArrayList<${NAME}Manager.Listener>()
    private var viewModel: ${NAME}Model? = null

    override fun getViewModel(): ${NAME}Model? {
        return viewModel
    }

    override fun setViewModel(viewModel: ${NAME}Model?) {
        if (this.viewModel == viewModel) {
            return
        }
        this.viewModel = viewModel
        for (listener in listeners) {
            listener.onChanged()
        }
    }

    override fun addListener(listener: ${NAME}Manager.Listener) {
        if (listeners.contains(listener)) {
            return
        }
        listeners.add(listener)
    }
    
    override fun removeListener(listener: ${NAME}Manager.Listener) {
        listeners.remove(listener)
    }
}
