#if (${PACKAGE_NAME} && ${PACKAGE_NAME} != "")package ${PACKAGE_NAME}

#end
#parse("File Header.java")
class ${NAME}ViewPresenter(
    private val screen: ${NAME}ViewContract.Screen
) : ${NAME}ViewContract.UserAction {

    private var viewModel: ${NAME}ViewModel? = null

    override fun onAttachedToWindow() {
        updateScreen()
    }

    override fun onDetachedFromWindow() {
    }
    
    override fun onViewModelSet(viewModel: ${NAME}ViewModel) {
        if (this.viewModel == viewModel) {
            return
        }
        this.viewModel = viewModel
        updateViewModel()
    }

    private fun updateScreen() {
        updateViewModel()
    }
    
    private fun updateViewModel() {
    }
}
