export const state = () => ({
    config: {},
    content: {},
})

export const mutations = {
    update(state, config_obj) {
        state.config = config_obj
    },
    contentUpdate(state, config_obj) {
        state.content = config_obj
    },
}