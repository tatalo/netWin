class SportsController {
    def netWinService

    static void main(String[] args) {
    }

    def index() { //運動
        redirect action: "webLinkTianSia"
    }

    def list() {
    }

    def webLinkTianSia() { //天下
        params.pType = "01"
        def nw200I = netWinService.getNw200List(params)
        render view: "/sports/formList1", model: [nw200I: nw200I,lv1IDX: 1]
    }

    def webLink35688() { //36588
        params.pType = "02"
        def nw200I = netWinService.getNw200List(params)
        render view: "/sports/formList2", model: [nw200I: nw200I,lv1IDX: 2]
    }

    def webLink35688China() { //36588(大陸)
        params.pType = "03"
        def nw200I = netWinService.getNw200List(params)
        render view: "/sports/formList2", model: [nw200I: nw200I,lv1IDX: 3]
    }

    def webLinkSinSinBao() { //新鑫寶
        params.pType = "04"
        def nw200I = netWinService.getNw200List(params)
        render view: "/sports/formList2", model: [nw200I: nw200I,lv1IDX: 4]
    }

    def webLinkYingSyong() { //英雄
        params.pType = "05"
        def nw200I = netWinService.getNw200List(params)
        render view: "/sports/formList1", model: [nw200I: nw200I,lv1IDX: 5]
    }

    def webLinkRongHuaHuei() { //榮華會
        params.pType = "06"
        def nw200I = netWinService.getNw200List(params)
        render view: "/sports/formList2", model: [nw200I: nw200I,lv1IDX: 6]
    }

    def webLinkOther() { //其他
        params.pType = "99"
        def nw200I = netWinService.getNw200List(params)
        render view: "/sports/formList2", model: [nw200I: nw200I,lv1IDX: 7]
    }
}
