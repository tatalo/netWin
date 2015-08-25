<div class="panel panel-default">
    <div class="panel-heading text-center">
        <h4>
            <strong>
                <g:message code="lotto.tab${pTab}.subTab${pSubTab}.label"/>
            </strong>
        </h4>
    </div>

    <div class="panel-body">
        <div class="panel panel-primary text-center">已顯示 ${totalCount} 筆最新資料</div>
        <div class="form-group">
            <div class="pull-left">
                <g:img dir="images" file="lotto/lotto${pType}.png"/>
            </div>

            <div class="pull-right">
                <g:remoteLink class="btn btn-primary" action="cntsOpenAnalysis1Filter"
                              params="[max: 25, pType: pType, divId: divId, pSubTab: pSubTab, pTab: pTab]"
                              update="${divId}">25</g:remoteLink>
                <g:remoteLink class="btn btn-primary" action="cntsOpenAnalysis1Filter"
                              params="[max: 50, pType: pType, divId: divId, pSubTab: pSubTab, pTab: pTab]"
                              update="${divId}">50</g:remoteLink>
                <g:remoteLink class="btn btn-primary" action="cntsOpenAnalysis1Filter"
                              params="[max: 100, pType: pType, divId: divId, pSubTab: pSubTab, pTab: pTab]"
                              update="${divId}">100</g:remoteLink>
                <g:remoteLink class="btn btn-primary" action="cntsOpenAnalysis1Filter"
                              params="[max: 150, pType: pType, divId: divId, pSubTab: pSubTab, pTab: pTab]"
                              update="${divId}">150</g:remoteLink>
                <g:remoteLink class="btn btn-primary" action="cntsOpenAnalysis1Filter"
                              params="[max: 200, pType: pType, divId: divId, pSubTab: pSubTab, pTab: pTab]"
                              update="${divId}">200</g:remoteLink>
                <div class="clearfix"/>
            </div>
            <div class="clearfix"/>
        </div>

        <div class="table-responsive">
            <!-- Default panel contents -->
            <table border="1" style="width: 100%">
                <tbody id="tbody3">
                <tr>
                    <th class="lottoTitleINSERTNO" colspan="3">
                        <div class="center-block">投注號碼</div>
                    </th>
                    <g:each var="Num" in="${(columnsNOs)}">
                        <th class="lottoTitleNO">
                            <div class="center-block">
                                ${Num}
                            </div>
                        </th>
                    </g:each>
                </tr>
                </tbody>
                <tbody id="tbody4">
                <th class="lottoTitleCNTS" colspan="3">
                    <div class="center-block">出現次數</div>
                </th>
                <g:each var="Num" in="${(columnsNOs)}">
                    <td class="tbody4td pull-down lottoTD">
                        <div class="text-center">
                            ${nw300CNTSI[0]?."NO${Num}"}
                        </div>
                        <div class="linepercent" style="height: ${(75 * (nw300CNTSI[0]?."NO${Num}")) / maxNum}px;"/>
                    </td>
                </g:each>
                </tbody>
                <g:render template="/lotto/lottoDataList1" model="[columnsNOs: columnsNOs, nw300I: nw300I]"/>
            </table>
        </div>
    </div>
</div>

%{--<div class="form-group">--}%
    %{--<div class="fb-comments" data-href="${grailsApplication.config.grails.serverURL}"--}%
         %{--data-numposts="5"></div>--}%
%{--</div>--}%