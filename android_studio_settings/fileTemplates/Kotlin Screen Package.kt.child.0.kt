#if (${PACKAGE_NAME} && ${PACKAGE_NAME} != "")package ${PACKAGE_NAME}.${NAME}

#end
#parse("File Header.java")
#set ($FEATURE_CAMEL_CASE = ${StringUtils.removeAndHump(${NAME}, "_")})
class ${FEATURE_CAMEL_CASE}ManagerImpl : ${FEATURE_CAMEL_CASE}Manager {

    private val listeners = ArrayList<${FEATURE_CAMEL_CASE}Manager.Listener>()
    private var viewModel: ${FEATURE_CAMEL_CASE}Model? = null

    override fun getViewModel(): ${FEATURE_CAMEL_CASE}Model? {
        return viewModel
    }

    override fun setViewModel(viewModel: ${FEATURE_CAMEL_CASE}Model?) {
        if (this.viewModel == viewModel) {
            return
        }
        this.viewModel = viewModel
        for (listener in listeners) {
            listener.onChanged()
        }
    }

    override fun addListener(listener: ${FEATURE_CAMEL_CASE}Manager.Listener) {
        if (listeners.contains(listener)) {
            return
        }
        listeners.add(listener)
    }
    
    override fun removeListener(listener: ${FEATURE_CAMEL_CASE}Manager.Listener) {
        listeners.remove(listener)
    }
}
