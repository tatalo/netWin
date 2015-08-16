<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>大樂透歷史數據</title>

    <style>
    .linepercent{
        background-repeat: repeat-y ;
        background-position: bottom center ;
        background-color: #6495ED ;
        border:1px solid
    }

    .linepercentEver{
        background-repeat: repeat-y ;
        background-position: bottom center ;
        background-color: #A2CD5A ;
        border:1px solid
    }

    .lineNumber{
        /*border:1px solid*/
        position:relative ;
    }

    .lineNumber label{
        /*border:1px solid*/
        position:absolute ;
        bottom:0;
        margin: 0;
        text-align: center ;
    }

    .lineNumberEver{
        /*border:1px solid*/
        position:relative ;
    }

    .lineNumberEver label{
        /*border:1px solid*/
        position:absolute ;
        top:0;
        margin: 0;
        text-align: center ;
    }

    .perPeriodsNumber tr:hover{
            background-color: #97FFFF;
    }

    .tbody1td{
        text-align: center ;
        background-color: #FCF6CF;
        color: #000000;
    }

    .tbody3td{
        text-align: center ;
        background-color: #FCF6CF;
        color: #000000;
    }
    </style>


<script type="text/javascript">

    var sortPeriodsType = 'asc';
    var sortNumberType = 'desc';
    var sortCountType = 'desc';
    var sortEverType = 'desc';

    $(function(){

    });

    function sortNumber() {
        var s = sortNumberType;
        if(sortNumberType=='desc'){
            $('#imgNumberSeriz').prop('src','${resource(dir: 'images/icon', file: 'down.png')}');
            sortNumberType = 'asc';
        }else{
            $('#imgNumberSeriz').prop('src','${resource(dir: 'images/icon', file: 'up.png')}');
            sortNumberType = 'desc';
        }


        var mylist3 = $("table tbody[id=tbody3] td[class=tbody3td]").clone(true).get();
        mylist3.sort(function(a,b){
            var compA = parseInt($(a).find('label[class="sernum1"]').text());
            var compB = parseInt($(b).find('label[class="sernum1"]').text());

            if(s=='desc'){
                return (compA > compB) ? -1 : (compA < compB) ? 1 : 0;
            }else{
                return (compA < compB) ? -1 : (compA > compB) ? 1 : 0;
            }
        });
        $("table tbody[id=tbody3] td[class=tbody3td]").remove();
        $("table tbody[id=tbody3] tr").append($(mylist3));


        var num = '${nw300InstanceList.size()}';
        var inum = parseInt(num);
        var z = '';
        var tempTRList = [];
        var tempTDList = [];
        var itr;
        for (i = 1; i <= inum; i++) {
            z = 'tbody2tr';
            z = z + i;
            var mylist2_th = $("table tbody[id=tbody2] tr[id=" + z + "]  td[class=tbody2th]").clone(true).get();
            var mylist2 = $("table tbody[id=tbody2] tr[id=" + z + "]  td[class=tbody2td]").clone(true).get();
            mylist2.sort(function(a, b) {
                var compA = parseInt($(a).find('label[class="onum"]').text());
                var compB = parseInt($(b).find('label[class="onum"]').text());

                if(s=='desc'){
                    return (compA > compB) ? -1 : (compA < compB) ? 1 : 0;
                }else{
                    return (compA < compB) ? -1 : (compA > compB) ? 1 : 0;
                }
            });
            itr = document.createElement('TR');
            $(itr).prop('id','tbody2tr'+i);
            tempTDList = [];
            tempTDList = tempTDList.concat(mylist2_th, mylist2);
            $(itr).append(tempTDList);
            tempTRList.push(itr);
        }
        $("table tbody[id=tbody2] tr").remove();
        $("table tbody[id=tbody2]").append(tempTRList);


        var mylist1 = $("table tbody[id=tbody1] td[class=tbody1td]").clone(true).get();
        mylist1.sort(function(a,b){
            var compA = parseInt($(a).find('label[class="sernum1"]').text());
            var compB = parseInt($(b).find('label[class="sernum1"]').text());

            if(s=='desc'){
                return (compA > compB) ? -1 : (compA < compB) ? 1 : 0;
            }else{
                return (compA < compB) ? -1 : (compA > compB) ? 1 : 0;
            }
        });
        $("table tbody[id=tbody1] td[class=tbody1td]").remove();
        $("table tbody[id=tbody1] tr").append($(mylist1));


        var mylist4 = $("table tbody[id=tbody4] td[class=tbody4td]").clone(true).get();
        mylist4.sort(function(a,b){
            var compA = parseInt($(a).find('label[class="onum"]').text());
            var compB = parseInt($(b).find('label[class="onum"]').text());

            if(s=='desc'){
                return (compA > compB) ? -1 : (compA < compB) ? 1 : 0;
            }else{
                return (compA < compB) ? -1 : (compA > compB) ? 1 : 0;
            }
        });
        $("table tbody[id=tbody4] td[class=tbody4td]").remove();
        $("table tbody[id=tbody4] tr").append($(mylist4));


        var mylist5 = $("table tbody[id=tbody5] td[class=tbody5td]").clone(true).get();
        mylist5.sort(function(a,b){
            var compA = parseInt($(a).find('label[class="onum"]').text());
            var compB = parseInt($(b).find('label[class="onum"]').text());

            if(s=='desc'){
                return (compA > compB) ? -1 : (compA < compB) ? 1 : 0;
            }else{
                return (compA < compB) ? -1 : (compA > compB) ? 1 : 0;
            }
        });
        $("table tbody[id=tbody5] td[class=tbody5td]").remove();
        $("table tbody[id=tbody5] tr").append($(mylist5));
    }


    function sortNumberCount(){
        var s = sortCountType;
        if(sortCountType=='desc'){
            $('#imgCountNumber').prop('src','${resource(dir: 'images/icon', file: 'down.png')}');
            sortCountType = 'asc';
        }else{
            $('#imgCountNumber').prop('src','${resource(dir: 'images/icon', file: 'up.png')}');
            sortCountType = 'desc';
        }


        var mylist3 = $("table tbody[id=tbody3] td[class=tbody3td]").clone(true).get();
        mylist3.sort(function(a,b){
            var compA = parseInt($(a).find('label[class="cnum"]').text());
            var compB = parseInt($(b).find('label[class="cnum"]').text());
            if(s=='desc'){
                return (compA > compB) ? -1 : (compA < compB) ? 1 : 0;
            }else{
                return (compA < compB) ? -1 : (compA > compB) ? 1 : 0;
            }
        });
        $("table tbody[id=tbody3] td[class=tbody3td]").remove();
        $("table tbody[id=tbody3] tr").append($(mylist3));


        var num = '${nw300InstanceList.size()}';
        var inum = parseInt(num);
        var z = '';
        var tempTRList = [];
        var tempTDList = [];
        var itr;
        for (i = 1; i <= inum; i++) {
            z = 'tbody2tr';
            z = z + i;
            var mylist2_th = $("table tbody[id=tbody2] tr[id=" + z + "]  td[class=tbody2th]").clone(true).get();
            var mylist2 = $("table tbody[id=tbody2] tr[id=" + z + "]  td[class=tbody2td]").clone(true).get();
            mylist2.sort(function(a, b) {
                var compA = parseInt($(a).find('label[class="cnum"]').text());
                var compB = parseInt($(b).find('label[class="cnum"]').text());
                if(s=='desc'){
                    return (compA > compB) ? -1 : (compA < compB) ? 1 : 0;
                }else{
                    return (compA < compB) ? -1 : (compA > compB) ? 1 : 0;
                }
            });
            itr = document.createElement('TR');
            $(itr).prop('id','tbody2tr'+i);
            tempTDList = [];
            tempTDList = tempTDList.concat(mylist2_th, mylist2);
            $(itr).append(tempTDList);
            tempTRList.push(itr);
        }
        $("table tbody[id=tbody2] tr").remove();
        $("table tbody[id=tbody2]").append(tempTRList);


        var mylist1 = $("table tbody[id=tbody1] td[class=tbody1td]").clone(true).get();
        mylist1.sort(function(a,b){
            var compA = parseInt($(a).find('label[class="cnum"]').text());
            var compB = parseInt($(b).find('label[class="cnum"]').text());
            if(s=='desc'){
                return (compA > compB) ? -1 : (compA < compB) ? 1 : 0;
            }else{
                return (compA < compB) ? -1 : (compA > compB) ? 1 : 0;
            }
        });
        $("table tbody[id=tbody1] td[class=tbody1td]").remove();
        $("table tbody[id=tbody1] tr").append($(mylist1));


        var mylist4 = $("table tbody[id=tbody4] td[class=tbody4td]").clone(true).get();
        mylist4.sort(function(a,b){
            var compA = parseInt($(a).find('label[class="cnum"]').text());
            var compB = parseInt($(b).find('label[class="cnum"]').text());
            if(s=='desc'){
                return (compA > compB) ? -1 : (compA < compB) ? 1 : 0;
            }else{
                return (compA < compB) ? -1 : (compA > compB) ? 1 : 0;
            }
        });
        $("table tbody[id=tbody4] td[class=tbody4td]").remove();
        $("table tbody[id=tbody4] tr").append($(mylist4));


        var mylist5 = $("table tbody[id=tbody5] td[class=tbody5td]").clone(true).get();
        mylist5.sort(function(a,b){
            var compA = parseInt($(a).find('label[class="cnum"]').text());
            var compB = parseInt($(b).find('label[class="cnum"]').text());
            if(s=='desc'){
                return (compA > compB) ? -1 : (compA < compB) ? 1 : 0;
            }else{
                return (compA < compB) ? -1 : (compA > compB) ? 1 : 0;
            }
        });
        $("table tbody[id=tbody5] td[class=tbody5td]").remove();
        $("table tbody[id=tbody5] tr").append($(mylist5));
    }


    function sortEverNumber(){
        var s = sortEverType;
        if(sortEverType=='desc'){
            $('#imgEverNumber').prop('src','${resource(dir: 'images/icon', file: 'down.png')}');
            sortEverType = 'asc';
        }else{
            $('#imgEverNumber').prop('src','${resource(dir: 'images/icon', file: 'up.png')}');
            sortEverType = 'desc';
        }


        var mylist3 = $("table tbody[id=tbody3] td[class=tbody3td]").clone(true).get();
        mylist3.sort(function(a,b){
            var compA = parseInt($(a).find('label[class="evnum"]').text());
            var compB = parseInt($(b).find('label[class="evnum"]').text());
            if(s=='desc'){
                return (compA > compB) ? -1 : (compA < compB) ? 1 : 0;
            }else{
                return (compA < compB) ? -1 : (compA > compB) ? 1 : 0;
            }
        });
        $("table tbody[id=tbody3] td[class=tbody3td]").remove();
        $("table tbody[id=tbody3] tr").append($(mylist3));


        var num = '${nw300InstanceList.size()}';
        var inum = parseInt(num);
        var z = '';
        var tempTRList = [];
        var tempTDList = [];
        var itr;
        for (i = 1; i <= inum; i++) {
            z = 'tbody2tr';
            z = z + i;
            var mylist2_th = $("table tbody[id=tbody2] tr[id=" + z + "]  td[class=tbody2th]").clone(true).get();
            var mylist2 = $("table tbody[id=tbody2] tr[id=" + z + "]  td[class=tbody2td]").clone(true).get();
            mylist2.sort(function(a, b) {
                var compA = parseInt($(a).find('label[class="evnum"]').text());
                var compB = parseInt($(b).find('label[class="evnum"]').text());
                if(s=='desc'){
                    return (compA > compB) ? -1 : (compA < compB) ? 1 : 0;
                }else{
                    return (compA < compB) ? -1 : (compA > compB) ? 1 : 0;
                }
            });
            itr = document.createElement('TR');
            $(itr).prop('id','tbody2tr'+i);
            tempTDList = [];
            tempTDList = tempTDList.concat(mylist2_th, mylist2);
            $(itr).append(tempTDList);
            tempTRList.push(itr);
        }
        $("table tbody[id=tbody2] tr").remove();
        $("table tbody[id=tbody2]").append(tempTRList);


        var mylist1 = $("table tbody[id=tbody1] td[class=tbody1td]").clone(true).get();
        mylist1.sort(function(a,b){
            var compA = parseInt($(a).find('label[class="evnum"]').text());
            var compB = parseInt($(b).find('label[class="evnum"]').text());
            if(s=='desc'){
                return (compA > compB) ? -1 : (compA < compB) ? 1 : 0;
            }else{
                return (compA < compB) ? -1 : (compA > compB) ? 1 : 0;
            }
        });
        $("table tbody[id=tbody1] td[class=tbody1td]").remove();
        $("table tbody[id=tbody1] tr").append($(mylist1));


        var mylist4 = $("table tbody[id=tbody4] td[class=tbody4td]").clone(true).get();
        mylist4.sort(function(a,b){
            var compA = parseInt($(a).find('label[class="evnum"]').text());
            var compB = parseInt($(b).find('label[class="evnum"]').text());
            if(s=='desc'){
                return (compA > compB) ? -1 : (compA < compB) ? 1 : 0;
            }else{
                return (compA < compB) ? -1 : (compA > compB) ? 1 : 0;
            }
        });
        $("table tbody[id=tbody4] td[class=tbody4td]").remove();
        $("table tbody[id=tbody4] tr").append($(mylist4));


        var mylist5 = $("table tbody[id=tbody5] td[class=tbody5td]").clone(true).get();
        mylist5.sort(function(a,b){
            var compA = parseInt($(a).find('label[class="evnum"]').text());
            var compB = parseInt($(b).find('label[class="evnum"]').text());
            if(s=='desc'){
                return (compA > compB) ? -1 : (compA < compB) ? 1 : 0;
            }else{
                return (compA < compB) ? -1 : (compA > compB) ? 1 : 0;
            }
        });
        $("table tbody[id=tbody5] td[class=tbody5td]").remove();
        $("table tbody[id=tbody5] tr").append($(mylist5));
    }


    function sortPeriods(){
            var s = sortPeriodsType;
            if(sortPeriodsType=='asc'){
                $('#imgPeriods').prop('src','${resource(dir: 'images/icon', file: 'down.png')}');
                sortPeriodsType = 'desc';
            }else{
                $('#imgPeriods').prop('src','${resource(dir: 'images/icon', file: 'up.png')}');
                sortPeriodsType = 'asc';
            }
            var mylist2 = $("table tbody[id=tbody2] tr").clone(true).get();
            mylist2.sort(function(a, b) {
                var compA = parseInt($(a).find('td[name="PERIODS"]').text());
                var compB = parseInt($(b).find('td[name="PERIODS"]').text());
                if(s=='asc'){
                    return (compA < compB) ? -1 : (compA > compB) ? 1 : 0;
                }else{
                    return (compA > compB) ? -1 : (compA < compB) ? 1 : 0;
                }
            });
            $("table tbody[id=tbody2] tr").remove();
            $("table tbody[id=tbody2]").append(mylist2);
    }


    </script>
</head>

<body>

<br/>
<br/>
<center>
    <div>
        <table class= "" border ="1" >

            <tbody id="tbody1">
            <tr>
                <td style=" background-color: #E0EEEE;width: 60px;text-align: center;">
                    <a href="javascript:void(0);" style="color:#000000;" onclick="sortPeriods();">期次<img id="imgPeriods" src="${resource(dir: 'images/icon', file: 'up.png')}" width="23px" height="23px"  border="0"></a>
                </td>
                <td style=" background-color: #E0EEEE;width: 80px;text-align: center;">日期</td>
                <td class="tbody1td"><label class="sernum1">01</label><label class="cnum" style="display: none;">${nw300CountInstance[0].NO01}</label><label class="evnum" style="display: none;">${nw300EverInstance[0].NO01}</label></td>    <td class="tbody1td"><label class="sernum1">02</label><label class="cnum" style="display: none;">${nw300CountInstance[0].NO02}</label><label class="evnum" style="display: none;">${nw300EverInstance[0].NO02}</label></td>
                <td class="tbody1td"><label class="sernum1">03</label><label class="cnum" style="display: none;">${nw300CountInstance[0].NO03}</label><label class="evnum" style="display: none;">${nw300EverInstance[0].NO03}</label></td>    <td class="tbody1td"><label class="sernum1">04</label><label class="cnum" style="display: none;">${nw300CountInstance[0].NO04}</label><label class="evnum" style="display: none;">${nw300EverInstance[0].NO04}</label></td>
                <td class="tbody1td"><label class="sernum1">05</label><label class="cnum" style="display: none;">${nw300CountInstance[0].NO05}</label><label class="evnum" style="display: none;">${nw300EverInstance[0].NO05}</label></td>    <td class="tbody1td"><label class="sernum1">06</label><label class="cnum" style="display: none;">${nw300CountInstance[0].NO06}</label><label class="evnum" style="display: none;">${nw300EverInstance[0].NO06}</label></td>
                <td class="tbody1td"><label class="sernum1">07</label><label class="cnum" style="display: none;">${nw300CountInstance[0].NO07}</label><label class="evnum" style="display: none;">${nw300EverInstance[0].NO07}</label></td>    <td class="tbody1td"><label class="sernum1">08</label><label class="cnum" style="display: none;">${nw300CountInstance[0].NO08}</label><label class="evnum" style="display: none;">${nw300EverInstance[0].NO08}</label></td>
                <td class="tbody1td"><label class="sernum1">09</label><label class="cnum" style="display: none;">${nw300CountInstance[0].NO09}</label><label class="evnum" style="display: none;">${nw300EverInstance[0].NO09}</label></td>    <td class="tbody1td"><label class="sernum1">10</label><label class="cnum" style="display: none;">${nw300CountInstance[0].NO10}</label><label class="evnum" style="display: none;">${nw300EverInstance[0].NO10}</label></td>
                <td class="tbody1td"><label class="sernum1">11</label><label class="cnum" style="display: none;">${nw300CountInstance[0].NO11}</label><label class="evnum" style="display: none;">${nw300EverInstance[0].NO11}</label></td>    <td class="tbody1td"><label class="sernum1">12</label><label class="cnum" style="display: none;">${nw300CountInstance[0].NO12}</label><label class="evnum" style="display: none;">${nw300EverInstance[0].NO12}</label></td>
                <td class="tbody1td"><label class="sernum1">13</label><label class="cnum" style="display: none;">${nw300CountInstance[0].NO13}</label><label class="evnum" style="display: none;">${nw300EverInstance[0].NO13}</label></td>    <td class="tbody1td"><label class="sernum1">14</label><label class="cnum" style="display: none;">${nw300CountInstance[0].NO14}</label><label class="evnum" style="display: none;">${nw300EverInstance[0].NO14}</label></td>
                <td class="tbody1td"><label class="sernum1">15</label><label class="cnum" style="display: none;">${nw300CountInstance[0].NO15}</label><label class="evnum" style="display: none;">${nw300EverInstance[0].NO15}</label></td>    <td class="tbody1td"><label class="sernum1">16</label><label class="cnum" style="display: none;">${nw300CountInstance[0].NO16}</label><label class="evnum" style="display: none;">${nw300EverInstance[0].NO16}</label></td>
                <td class="tbody1td"><label class="sernum1">17</label><label class="cnum" style="display: none;">${nw300CountInstance[0].NO17}</label><label class="evnum" style="display: none;">${nw300EverInstance[0].NO17}</label></td>    <td class="tbody1td"><label class="sernum1">18</label><label class="cnum" style="display: none;">${nw300CountInstance[0].NO18}</label><label class="evnum" style="display: none;">${nw300EverInstance[0].NO18}</label></td>
                <td class="tbody1td"><label class="sernum1">19</label><label class="cnum" style="display: none;">${nw300CountInstance[0].NO19}</label><label class="evnum" style="display: none;">${nw300EverInstance[0].NO19}</label></td>    <td class="tbody1td"><label class="sernum1">20</label><label class="cnum" style="display: none;">${nw300CountInstance[0].NO20}</label><label class="evnum" style="display: none;">${nw300EverInstance[0].NO20}</label></td>
                <td class="tbody1td"><label class="sernum1">21</label><label class="cnum" style="display: none;">${nw300CountInstance[0].NO21}</label><label class="evnum" style="display: none;">${nw300EverInstance[0].NO21}</label></td>    <td class="tbody1td"><label class="sernum1">22</label><label class="cnum" style="display: none;">${nw300CountInstance[0].NO22}</label><label class="evnum" style="display: none;">${nw300EverInstance[0].NO22}</label></td>
                <td class="tbody1td"><label class="sernum1">23</label><label class="cnum" style="display: none;">${nw300CountInstance[0].NO23}</label><label class="evnum" style="display: none;">${nw300EverInstance[0].NO23}</label></td>    <td class="tbody1td"><label class="sernum1">24</label><label class="cnum" style="display: none;">${nw300CountInstance[0].NO24}</label><label class="evnum" style="display: none;">${nw300EverInstance[0].NO24}</label></td>
                <td class="tbody1td"><label class="sernum1">25</label><label class="cnum" style="display: none;">${nw300CountInstance[0].NO25}</label><label class="evnum" style="display: none;">${nw300EverInstance[0].NO25}</label></td>    <td class="tbody1td"><label class="sernum1">26</label><label class="cnum" style="display: none;">${nw300CountInstance[0].NO26}</label><label class="evnum" style="display: none;">${nw300EverInstance[0].NO26}</label></td>
                <td class="tbody1td"><label class="sernum1">27</label><label class="cnum" style="display: none;">${nw300CountInstance[0].NO27}</label><label class="evnum" style="display: none;">${nw300EverInstance[0].NO27}</label></td>    <td class="tbody1td"><label class="sernum1">28</label><label class="cnum" style="display: none;">${nw300CountInstance[0].NO28}</label><label class="evnum" style="display: none;">${nw300EverInstance[0].NO28}</label></td>
                <td class="tbody1td"><label class="sernum1">29</label><label class="cnum" style="display: none;">${nw300CountInstance[0].NO29}</label><label class="evnum" style="display: none;">${nw300EverInstance[0].NO29}</label></td>    <td class="tbody1td"><label class="sernum1">30</label><label class="cnum" style="display: none;">${nw300CountInstance[0].NO30}</label><label class="evnum" style="display: none;">${nw300EverInstance[0].NO30}</label></td>
                <td class="tbody1td"><label class="sernum1">31</label><label class="cnum" style="display: none;">${nw300CountInstance[0].NO31}</label><label class="evnum" style="display: none;">${nw300EverInstance[0].NO31}</label></td>    <td class="tbody1td"><label class="sernum1">32</label><label class="cnum" style="display: none;">${nw300CountInstance[0].NO32}</label><label class="evnum" style="display: none;">${nw300EverInstance[0].NO32}</label></td>
                <td class="tbody1td"><label class="sernum1">33</label><label class="cnum" style="display: none;">${nw300CountInstance[0].NO33}</label><label class="evnum" style="display: none;">${nw300EverInstance[0].NO33}</label></td>    <td class="tbody1td"><label class="sernum1">34</label><label class="cnum" style="display: none;">${nw300CountInstance[0].NO34}</label><label class="evnum" style="display: none;">${nw300EverInstance[0].NO34}</label></td>
                <td class="tbody1td"><label class="sernum1">35</label><label class="cnum" style="display: none;">${nw300CountInstance[0].NO35}</label><label class="evnum" style="display: none;">${nw300EverInstance[0].NO35}</label></td>    <td class="tbody1td"><label class="sernum1">36</label><label class="cnum" style="display: none;">${nw300CountInstance[0].NO36}</label><label class="evnum" style="display: none;">${nw300EverInstance[0].NO36}</label></td>
                <td class="tbody1td"><label class="sernum1">37</label><label class="cnum" style="display: none;">${nw300CountInstance[0].NO37}</label><label class="evnum" style="display: none;">${nw300EverInstance[0].NO37}</label></td>    <td class="tbody1td"><label class="sernum1">38</label><label class="cnum" style="display: none;">${nw300CountInstance[0].NO38}</label><label class="evnum" style="display: none;">${nw300EverInstance[0].NO38}</label></td>
                <td class="tbody1td"><label class="sernum1">39</label><label class="cnum" style="display: none;">${nw300CountInstance[0].NO39}</label><label class="evnum" style="display: none;">${nw300EverInstance[0].NO39}</label></td>    <td class="tbody1td"><label class="sernum1">40</label><label class="cnum" style="display: none;">${nw300CountInstance[0].NO40}</label><label class="evnum" style="display: none;">${nw300EverInstance[0].NO40}</label></td>
                <td class="tbody1td"><label class="sernum1">41</label><label class="cnum" style="display: none;">${nw300CountInstance[0].NO41}</label><label class="evnum" style="display: none;">${nw300EverInstance[0].NO41}</label></td>    <td class="tbody1td"><label class="sernum1">42</label><label class="cnum" style="display: none;">${nw300CountInstance[0].NO42}</label><label class="evnum" style="display: none;">${nw300EverInstance[0].NO42}</label></td>
                <td class="tbody1td"><label class="sernum1">43</label><label class="cnum" style="display: none;">${nw300CountInstance[0].NO43}</label><label class="evnum" style="display: none;">${nw300EverInstance[0].NO43}</label></td>    <td class="tbody1td"><label class="sernum1">44</label><label class="cnum" style="display: none;">${nw300CountInstance[0].NO44}</label><label class="evnum" style="display: none;">${nw300EverInstance[0].NO44}</label></td>
                <td class="tbody1td"><label class="sernum1">45</label><label class="cnum" style="display: none;">${nw300CountInstance[0].NO45}</label><label class="evnum" style="display: none;">${nw300EverInstance[0].NO45}</label></td>    <td class="tbody1td"><label class="sernum1">46</label><label class="cnum" style="display: none;">${nw300CountInstance[0].NO46}</label><label class="evnum" style="display: none;">${nw300EverInstance[0].NO46}</label></td>
                <td class="tbody1td"><label class="sernum1">47</label><label class="cnum" style="display: none;">${nw300CountInstance[0].NO47}</label><label class="evnum" style="display: none;">${nw300EverInstance[0].NO47}</label></td>    <td class="tbody1td"><label class="sernum1">48</label><label class="cnum" style="display: none;">${nw300CountInstance[0].NO48}</label><label class="evnum" style="display: none;">${nw300EverInstance[0].NO48}</label></td>
                <td class="tbody1td"><label class="sernum1">49</label><label class="cnum" style="display: none;">${nw300CountInstance[0].NO49}</label><label class="evnum" style="display: none;">${nw300EverInstance[0].NO49}</label></td>
            </tr>
            </tbody>

            <tbody class="perPeriodsNumber" id="tbody2">
            <g:each in="${nw300InstanceList}" var="nw300Instance" status="i">
                <tr id="tbody2tr${i+1}">
                    <td name="PERIODS" class="tbody2th">${nw300Instance.PERIODS}</td>
                    <td class="tbody2th"><g:formatDate format="yyyyMMdd" date="${nw300Instance?.OPENDT}"/></td>
                    <td style="${nw300Instance.NO01>1?'background-color: #53868B;color: white;':(nw300Instance.NO01>0?'background-color: #D2691E;color: white;':'')}" class="tbody2td"><label class="onum" style="display: none;">01</label><label class="cnum" style="display: none;">${nw300CountInstance[0].NO01}</label><label class="evnum" style="display: none;">${nw300EverInstance[0].NO01}</label>${nw300Instance.NO01?'01':''}</td>  <td style="${nw300Instance.NO02>1?'background-color: #53868B;color: white;':(nw300Instance.NO02>0?'background-color: #D2691E;color: white;':'')}" class="tbody2td"><label class="onum" style="display: none;">02</label><label class="cnum" style="display: none;">${nw300CountInstance[0].NO02}</label><label class="evnum" style="display: none;">${nw300EverInstance[0].NO02}</label>${nw300Instance.NO02?'02':''}</td>
                    <td style="${nw300Instance.NO03>1?'background-color: #53868B;color: white;':(nw300Instance.NO03>0?'background-color: #D2691E;color: white;':'')}" class="tbody2td"><label class="onum" style="display: none;">03</label><label class="cnum" style="display: none;">${nw300CountInstance[0].NO03}</label><label class="evnum" style="display: none;">${nw300EverInstance[0].NO03}</label>${nw300Instance.NO03?'03':''}</td>  <td style="${nw300Instance.NO04>1?'background-color: #53868B;color: white;':(nw300Instance.NO04>0?'background-color: #D2691E;color: white;':'')}" class="tbody2td"><label class="onum" style="display: none;">04</label><label class="cnum" style="display: none;">${nw300CountInstance[0].NO04}</label><label class="evnum" style="display: none;">${nw300EverInstance[0].NO04}</label>${nw300Instance.NO04?'04':''}</td>
                    <td style="${nw300Instance.NO05>1?'background-color: #53868B;color: white;':(nw300Instance.NO05>0?'background-color: #D2691E;color: white;':'')}" class="tbody2td"><label class="onum" style="display: none;">05</label><label class="cnum" style="display: none;">${nw300CountInstance[0].NO05}</label><label class="evnum" style="display: none;">${nw300EverInstance[0].NO05}</label>${nw300Instance.NO05?'05':''}</td>  <td style="${nw300Instance.NO06>1?'background-color: #53868B;color: white;':(nw300Instance.NO06>0?'background-color: #D2691E;color: white;':'')}" class="tbody2td"><label class="onum" style="display: none;">06</label><label class="cnum" style="display: none;">${nw300CountInstance[0].NO06}</label><label class="evnum" style="display: none;">${nw300EverInstance[0].NO06}</label>${nw300Instance.NO06?'06':''}</td>
                    <td style="${nw300Instance.NO07>1?'background-color: #53868B;color: white;':(nw300Instance.NO07>0?'background-color: #D2691E;color: white;':'')}" class="tbody2td"><label class="onum" style="display: none;">07</label><label class="cnum" style="display: none;">${nw300CountInstance[0].NO07}</label><label class="evnum" style="display: none;">${nw300EverInstance[0].NO07}</label>${nw300Instance.NO07?'07':''}</td>  <td style="${nw300Instance.NO08>1?'background-color: #53868B;color: white;':(nw300Instance.NO08>0?'background-color: #D2691E;color: white;':'')}" class="tbody2td"><label class="onum" style="display: none;">08</label><label class="cnum" style="display: none;">${nw300CountInstance[0].NO08}</label><label class="evnum" style="display: none;">${nw300EverInstance[0].NO08}</label>${nw300Instance.NO08?'08':''}</td>
                    <td style="${nw300Instance.NO09>1?'background-color: #53868B;color: white;':(nw300Instance.NO09>0?'background-color: #D2691E;color: white;':'')}" class="tbody2td"><label class="onum" style="display: none;">09</label><label class="cnum" style="display: none;">${nw300CountInstance[0].NO09}</label><label class="evnum" style="display: none;">${nw300EverInstance[0].NO09}</label>${nw300Instance.NO09?'09':''}</td>  <td style="${nw300Instance.NO10>1?'background-color: #53868B;color: white;':(nw300Instance.NO10>0?'background-color: #D2691E;color: white;':'')}" class="tbody2td"><label class="onum" style="display: none;">10</label><label class="cnum" style="display: none;">${nw300CountInstance[0].NO10}</label><label class="evnum" style="display: none;">${nw300EverInstance[0].NO10}</label>${nw300Instance.NO10?'10':''}</td>
                    <td style="${nw300Instance.NO11>1?'background-color: #53868B;color: white;':(nw300Instance.NO11>0?'background-color: #D2691E;color: white;':'')}" class="tbody2td"><label class="onum" style="display: none;">11</label><label class="cnum" style="display: none;">${nw300CountInstance[0].NO11}</label><label class="evnum" style="display: none;">${nw300EverInstance[0].NO11}</label>${nw300Instance.NO11?'11':''}</td>  <td style="${nw300Instance.NO12>1?'background-color: #53868B;color: white;':(nw300Instance.NO12>0?'background-color: #D2691E;color: white;':'')}" class="tbody2td"><label class="onum" style="display: none;">12</label><label class="cnum" style="display: none;">${nw300CountInstance[0].NO12}</label><label class="evnum" style="display: none;">${nw300EverInstance[0].NO12}</label>${nw300Instance.NO12?'12':''}</td>
                    <td style="${nw300Instance.NO13>1?'background-color: #53868B;color: white;':(nw300Instance.NO13>0?'background-color: #D2691E;color: white;':'')}" class="tbody2td"><label class="onum" style="display: none;">13</label><label class="cnum" style="display: none;">${nw300CountInstance[0].NO13}</label><label class="evnum" style="display: none;">${nw300EverInstance[0].NO13}</label>${nw300Instance.NO13?'13':''}</td>  <td style="${nw300Instance.NO14>1?'background-color: #53868B;color: white;':(nw300Instance.NO14>0?'background-color: #D2691E;color: white;':'')}" class="tbody2td"><label class="onum" style="display: none;">14</label><label class="cnum" style="display: none;">${nw300CountInstance[0].NO14}</label><label class="evnum" style="display: none;">${nw300EverInstance[0].NO14}</label>${nw300Instance.NO14?'14':''}</td>
                    <td style="${nw300Instance.NO15>1?'background-color: #53868B;color: white;':(nw300Instance.NO15>0?'background-color: #D2691E;color: white;':'')}" class="tbody2td"><label class="onum" style="display: none;">15</label><label class="cnum" style="display: none;">${nw300CountInstance[0].NO15}</label><label class="evnum" style="display: none;">${nw300EverInstance[0].NO15}</label>${nw300Instance.NO15?'15':''}</td>  <td style="${nw300Instance.NO16>1?'background-color: #53868B;color: white;':(nw300Instance.NO16>0?'background-color: #D2691E;color: white;':'')}" class="tbody2td"><label class="onum" style="display: none;">16</label><label class="cnum" style="display: none;">${nw300CountInstance[0].NO16}</label><label class="evnum" style="display: none;">${nw300EverInstance[0].NO16}</label>${nw300Instance.NO16?'16':''}</td>
                    <td style="${nw300Instance.NO17>1?'background-color: #53868B;color: white;':(nw300Instance.NO17>0?'background-color: #D2691E;color: white;':'')}" class="tbody2td"><label class="onum" style="display: none;">17</label><label class="cnum" style="display: none;">${nw300CountInstance[0].NO17}</label><label class="evnum" style="display: none;">${nw300EverInstance[0].NO17}</label>${nw300Instance.NO17?'17':''}</td>  <td style="${nw300Instance.NO18>1?'background-color: #53868B;color: white;':(nw300Instance.NO18>0?'background-color: #D2691E;color: white;':'')}" class="tbody2td"><label class="onum" style="display: none;">18</label><label class="cnum" style="display: none;">${nw300CountInstance[0].NO18}</label><label class="evnum" style="display: none;">${nw300EverInstance[0].NO18}</label>${nw300Instance.NO18?'18':''}</td>
                    <td style="${nw300Instance.NO19>1?'background-color: #53868B;color: white;':(nw300Instance.NO19>0?'background-color: #D2691E;color: white;':'')}" class="tbody2td"><label class="onum" style="display: none;">19</label><label class="cnum" style="display: none;">${nw300CountInstance[0].NO19}</label><label class="evnum" style="display: none;">${nw300EverInstance[0].NO19}</label>${nw300Instance.NO19?'19':''}</td>  <td style="${nw300Instance.NO20>1?'background-color: #53868B;color: white;':(nw300Instance.NO20>0?'background-color: #D2691E;color: white;':'')}" class="tbody2td"><label class="onum" style="display: none;">20</label><label class="cnum" style="display: none;">${nw300CountInstance[0].NO20}</label><label class="evnum" style="display: none;">${nw300EverInstance[0].NO20}</label>${nw300Instance.NO20?'20':''}</td>
                    <td style="${nw300Instance.NO21>1?'background-color: #53868B;color: white;':(nw300Instance.NO21>0?'background-color: #D2691E;color: white;':'')}" class="tbody2td"><label class="onum" style="display: none;">21</label><label class="cnum" style="display: none;">${nw300CountInstance[0].NO21}</label><label class="evnum" style="display: none;">${nw300EverInstance[0].NO21}</label>${nw300Instance.NO21?'21':''}</td>  <td style="${nw300Instance.NO22>1?'background-color: #53868B;color: white;':(nw300Instance.NO22>0?'background-color: #D2691E;color: white;':'')}" class="tbody2td"><label class="onum" style="display: none;">22</label><label class="cnum" style="display: none;">${nw300CountInstance[0].NO22}</label><label class="evnum" style="display: none;">${nw300EverInstance[0].NO22}</label>${nw300Instance.NO22?'22':''}</td>
                    <td style="${nw300Instance.NO23>1?'background-color: #53868B;color: white;':(nw300Instance.NO23>0?'background-color: #D2691E;color: white;':'')}" class="tbody2td"><label class="onum" style="display: none;">23</label><label class="cnum" style="display: none;">${nw300CountInstance[0].NO23}</label><label class="evnum" style="display: none;">${nw300EverInstance[0].NO23}</label>${nw300Instance.NO23?'23':''}</td>  <td style="${nw300Instance.NO24>1?'background-color: #53868B;color: white;':(nw300Instance.NO24>0?'background-color: #D2691E;color: white;':'')}" class="tbody2td"><label class="onum" style="display: none;">24</label><label class="cnum" style="display: none;">${nw300CountInstance[0].NO24}</label><label class="evnum" style="display: none;">${nw300EverInstance[0].NO24}</label>${nw300Instance.NO24?'24':''}</td>
                    <td style="${nw300Instance.NO25>1?'background-color: #53868B;color: white;':(nw300Instance.NO25>0?'background-color: #D2691E;color: white;':'')}" class="tbody2td"><label class="onum" style="display: none;">25</label><label class="cnum" style="display: none;">${nw300CountInstance[0].NO25}</label><label class="evnum" style="display: none;">${nw300EverInstance[0].NO25}</label>${nw300Instance.NO25?'25':''}</td>  <td style="${nw300Instance.NO26>1?'background-color: #53868B;color: white;':(nw300Instance.NO26>0?'background-color: #D2691E;color: white;':'')}" class="tbody2td"><label class="onum" style="display: none;">26</label><label class="cnum" style="display: none;">${nw300CountInstance[0].NO26}</label><label class="evnum" style="display: none;">${nw300EverInstance[0].NO26}</label>${nw300Instance.NO26?'26':''}</td>
                    <td style="${nw300Instance.NO27>1?'background-color: #53868B;color: white;':(nw300Instance.NO27>0?'background-color: #D2691E;color: white;':'')}" class="tbody2td"><label class="onum" style="display: none;">27</label><label class="cnum" style="display: none;">${nw300CountInstance[0].NO27}</label><label class="evnum" style="display: none;">${nw300EverInstance[0].NO27}</label>${nw300Instance.NO27?'27':''}</td>  <td style="${nw300Instance.NO28>1?'background-color: #53868B;color: white;':(nw300Instance.NO28>0?'background-color: #D2691E;color: white;':'')}" class="tbody2td"><label class="onum" style="display: none;">28</label><label class="cnum" style="display: none;">${nw300CountInstance[0].NO28}</label><label class="evnum" style="display: none;">${nw300EverInstance[0].NO28}</label>${nw300Instance.NO28?'28':''}</td>
                    <td style="${nw300Instance.NO29>1?'background-color: #53868B;color: white;':(nw300Instance.NO29>0?'background-color: #D2691E;color: white;':'')}" class="tbody2td"><label class="onum" style="display: none;">29</label><label class="cnum" style="display: none;">${nw300CountInstance[0].NO29}</label><label class="evnum" style="display: none;">${nw300EverInstance[0].NO29}</label>${nw300Instance.NO29?'29':''}</td>  <td style="${nw300Instance.NO30>1?'background-color: #53868B;color: white;':(nw300Instance.NO30>0?'background-color: #D2691E;color: white;':'')}" class="tbody2td"><label class="onum" style="display: none;">30</label><label class="cnum" style="display: none;">${nw300CountInstance[0].NO30}</label><label class="evnum" style="display: none;">${nw300EverInstance[0].NO30}</label>${nw300Instance.NO30?'30':''}</td>
                    <td style="${nw300Instance.NO31>1?'background-color: #53868B;color: white;':(nw300Instance.NO31>0?'background-color: #D2691E;color: white;':'')}" class="tbody2td"><label class="onum" style="display: none;">31</label><label class="cnum" style="display: none;">${nw300CountInstance[0].NO31}</label><label class="evnum" style="display: none;">${nw300EverInstance[0].NO31}</label>${nw300Instance.NO31?'31':''}</td>  <td style="${nw300Instance.NO32>1?'background-color: #53868B;color: white;':(nw300Instance.NO32>0?'background-color: #D2691E;color: white;':'')}" class="tbody2td"><label class="onum" style="display: none;">32</label><label class="cnum" style="display: none;">${nw300CountInstance[0].NO32}</label><label class="evnum" style="display: none;">${nw300EverInstance[0].NO32}</label>${nw300Instance.NO32?'32':''}</td>
                    <td style="${nw300Instance.NO33>1?'background-color: #53868B;color: white;':(nw300Instance.NO33>0?'background-color: #D2691E;color: white;':'')}" class="tbody2td"><label class="onum" style="display: none;">33</label><label class="cnum" style="display: none;">${nw300CountInstance[0].NO33}</label><label class="evnum" style="display: none;">${nw300EverInstance[0].NO33}</label>${nw300Instance.NO33?'33':''}</td>  <td style="${nw300Instance.NO34>1?'background-color: #53868B;color: white;':(nw300Instance.NO34>0?'background-color: #D2691E;color: white;':'')}" class="tbody2td"><label class="onum" style="display: none;">34</label><label class="cnum" style="display: none;">${nw300CountInstance[0].NO34}</label><label class="evnum" style="display: none;">${nw300EverInstance[0].NO34}</label>${nw300Instance.NO34?'34':''}</td>
                    <td style="${nw300Instance.NO35>1?'background-color: #53868B;color: white;':(nw300Instance.NO35>0?'background-color: #D2691E;color: white;':'')}" class="tbody2td"><label class="onum" style="display: none;">35</label><label class="cnum" style="display: none;">${nw300CountInstance[0].NO35}</label><label class="evnum" style="display: none;">${nw300EverInstance[0].NO35}</label>${nw300Instance.NO35?'35':''}</td>  <td style="${nw300Instance.NO36>1?'background-color: #53868B;color: white;':(nw300Instance.NO36>0?'background-color: #D2691E;color: white;':'')}" class="tbody2td"><label class="onum" style="display: none;">36</label><label class="cnum" style="display: none;">${nw300CountInstance[0].NO36}</label><label class="evnum" style="display: none;">${nw300EverInstance[0].NO36}</label>${nw300Instance.NO36?'36':''}</td>
                    <td style="${nw300Instance.NO37>1?'background-color: #53868B;color: white;':(nw300Instance.NO37>0?'background-color: #D2691E;color: white;':'')}" class="tbody2td"><label class="onum" style="display: none;">37</label><label class="cnum" style="display: none;">${nw300CountInstance[0].NO37}</label><label class="evnum" style="display: none;">${nw300EverInstance[0].NO37}</label>${nw300Instance.NO37?'37':''}</td>  <td style="${nw300Instance.NO38>1?'background-color: #53868B;color: white;':(nw300Instance.NO38>0?'background-color: #D2691E;color: white;':'')}" class="tbody2td"><label class="onum" style="display: none;">38</label><label class="cnum" style="display: none;">${nw300CountInstance[0].NO38}</label><label class="evnum" style="display: none;">${nw300EverInstance[0].NO38}</label>${nw300Instance.NO38?'38':''}</td>
                    <td style="${nw300Instance.NO39>1?'background-color: #53868B;color: white;':(nw300Instance.NO39>0?'background-color: #D2691E;color: white;':'')}" class="tbody2td"><label class="onum" style="display: none;">39</label><label class="cnum" style="display: none;">${nw300CountInstance[0].NO39}</label><label class="evnum" style="display: none;">${nw300EverInstance[0].NO39}</label>${nw300Instance.NO39?'39':''}</td>  <td style="${nw300Instance.NO40>1?'background-color: #53868B;color: white;':(nw300Instance.NO40>0?'background-color: #D2691E;color: white;':'')}" class="tbody2td"><label class="onum" style="display: none;">40</label><label class="cnum" style="display: none;">${nw300CountInstance[0].NO40}</label><label class="evnum" style="display: none;">${nw300EverInstance[0].NO40}</label>${nw300Instance.NO40?'40':''}</td>
                    <td style="${nw300Instance.NO41>1?'background-color: #53868B;color: white;':(nw300Instance.NO41>0?'background-color: #D2691E;color: white;':'')}" class="tbody2td"><label class="onum" style="display: none;">41</label><label class="cnum" style="display: none;">${nw300CountInstance[0].NO41}</label><label class="evnum" style="display: none;">${nw300EverInstance[0].NO41}</label>${nw300Instance.NO41?'41':''}</td>  <td style="${nw300Instance.NO42>1?'background-color: #53868B;color: white;':(nw300Instance.NO42>0?'background-color: #D2691E;color: white;':'')}" class="tbody2td"><label class="onum" style="display: none;">42</label><label class="cnum" style="display: none;">${nw300CountInstance[0].NO42}</label><label class="evnum" style="display: none;">${nw300EverInstance[0].NO42}</label>${nw300Instance.NO42?'42':''}</td>
                    <td style="${nw300Instance.NO43>1?'background-color: #53868B;color: white;':(nw300Instance.NO43>0?'background-color: #D2691E;color: white;':'')}" class="tbody2td"><label class="onum" style="display: none;">43</label><label class="cnum" style="display: none;">${nw300CountInstance[0].NO43}</label><label class="evnum" style="display: none;">${nw300EverInstance[0].NO43}</label>${nw300Instance.NO43?'43':''}</td>  <td style="${nw300Instance.NO44>1?'background-color: #53868B;color: white;':(nw300Instance.NO44>0?'background-color: #D2691E;color: white;':'')}" class="tbody2td"><label class="onum" style="display: none;">44</label><label class="cnum" style="display: none;">${nw300CountInstance[0].NO44}</label><label class="evnum" style="display: none;">${nw300EverInstance[0].NO44}</label>${nw300Instance.NO44?'44':''}</td>
                    <td style="${nw300Instance.NO45>1?'background-color: #53868B;color: white;':(nw300Instance.NO45>0?'background-color: #D2691E;color: white;':'')}" class="tbody2td"><label class="onum" style="display: none;">45</label><label class="cnum" style="display: none;">${nw300CountInstance[0].NO45}</label><label class="evnum" style="display: none;">${nw300EverInstance[0].NO45}</label>${nw300Instance.NO45?'45':''}</td>  <td style="${nw300Instance.NO46>1?'background-color: #53868B;color: white;':(nw300Instance.NO46>0?'background-color: #D2691E;color: white;':'')}" class="tbody2td"><label class="onum" style="display: none;">46</label><label class="cnum" style="display: none;">${nw300CountInstance[0].NO46}</label><label class="evnum" style="display: none;">${nw300EverInstance[0].NO46}</label>${nw300Instance.NO46?'46':''}</td>
                    <td style="${nw300Instance.NO47>1?'background-color: #53868B;color: white;':(nw300Instance.NO47>0?'background-color: #D2691E;color: white;':'')}" class="tbody2td"><label class="onum" style="display: none;">47</label><label class="cnum" style="display: none;">${nw300CountInstance[0].NO47}</label><label class="evnum" style="display: none;">${nw300EverInstance[0].NO47}</label>${nw300Instance.NO47?'47':''}</td>  <td style="${nw300Instance.NO48>1?'background-color: #53868B;color: white;':(nw300Instance.NO48>0?'background-color: #D2691E;color: white;':'')}" class="tbody2td"><label class="onum" style="display: none;">48</label><label class="cnum" style="display: none;">${nw300CountInstance[0].NO48}</label><label class="evnum" style="display: none;">${nw300EverInstance[0].NO48}</label>${nw300Instance.NO48?'48':''}</td>
                    <td style="${nw300Instance.NO49>1?'background-color: #53868B;color: white;':(nw300Instance.NO49>0?'background-color: #D2691E;color: white;':'')}" class="tbody2td"><label class="onum" style="display: none;">49</label><label class="cnum" style="display: none;">${nw300CountInstance[0].NO49}</label><label class="evnum" style="display: none;">${nw300EverInstance[0].NO49}</label>${nw300Instance.NO49?'49':''}</td>
                </tr>
            </g:each>
            </tbody>

            <tbody id="tbody3">
            <tr>
                <td style="background-color: #FFD700; text-align: center;" colspan="2">
                    <a href="javascript:void(0);" style="color:#000000;" onclick="sortNumber();">投注號碼<img id="imgNumberSeriz" src="${resource(dir: 'images/icon', file: 'up.png')}" width="23px" height="23px"  border="0"></a>
                </td>
                <td class="tbody3td"><label class="sernum1">01</label><label class="cnum" style="display: none;">${nw300CountInstance[0].NO01}</label><label class="evnum" style="display: none;">${nw300EverInstance[0].NO01}</label></td>     <td class="tbody3td"><label class="sernum1">02</label><label class="cnum" style="display: none;">${nw300CountInstance[0].NO02}</label><label class="evnum" style="display: none;">${nw300EverInstance[0].NO02}</label></td>
                <td class="tbody3td"><label class="sernum1">03</label><label class="cnum" style="display: none;">${nw300CountInstance[0].NO03}</label><label class="evnum" style="display: none;">${nw300EverInstance[0].NO03}</label></td>     <td class="tbody3td"><label class="sernum1">04</label><label class="cnum" style="display: none;">${nw300CountInstance[0].NO04}</label><label class="evnum" style="display: none;">${nw300EverInstance[0].NO04}</label></td>
                <td class="tbody3td"><label class="sernum1">05</label><label class="cnum" style="display: none;">${nw300CountInstance[0].NO05}</label><label class="evnum" style="display: none;">${nw300EverInstance[0].NO05}</label></td>     <td class="tbody3td"><label class="sernum1">06</label><label class="cnum" style="display: none;">${nw300CountInstance[0].NO06}</label><label class="evnum" style="display: none;">${nw300EverInstance[0].NO06}</label></td>
                <td class="tbody3td"><label class="sernum1">07</label><label class="cnum" style="display: none;">${nw300CountInstance[0].NO07}</label><label class="evnum" style="display: none;">${nw300EverInstance[0].NO07}</label></td>     <td class="tbody3td"><label class="sernum1">08</label><label class="cnum" style="display: none;">${nw300CountInstance[0].NO08}</label><label class="evnum" style="display: none;">${nw300EverInstance[0].NO08}</label></td>
                <td class="tbody3td"><label class="sernum1">09</label><label class="cnum" style="display: none;">${nw300CountInstance[0].NO09}</label><label class="evnum" style="display: none;">${nw300EverInstance[0].NO09}</label></td>     <td class="tbody3td"><label class="sernum1">10</label><label class="cnum" style="display: none;">${nw300CountInstance[0].NO10}</label><label class="evnum" style="display: none;">${nw300EverInstance[0].NO10}</label></td>
                <td class="tbody3td"><label class="sernum1">11</label><label class="cnum" style="display: none;">${nw300CountInstance[0].NO11}</label><label class="evnum" style="display: none;">${nw300EverInstance[0].NO11}</label></td>     <td class="tbody3td"><label class="sernum1">12</label><label class="cnum" style="display: none;">${nw300CountInstance[0].NO12}</label><label class="evnum" style="display: none;">${nw300EverInstance[0].NO12}</label></td>
                <td class="tbody3td"><label class="sernum1">13</label><label class="cnum" style="display: none;">${nw300CountInstance[0].NO13}</label><label class="evnum" style="display: none;">${nw300EverInstance[0].NO13}</label></td>     <td class="tbody3td"><label class="sernum1">14</label><label class="cnum" style="display: none;">${nw300CountInstance[0].NO14}</label><label class="evnum" style="display: none;">${nw300EverInstance[0].NO14}</label></td>
                <td class="tbody3td"><label class="sernum1">15</label><label class="cnum" style="display: none;">${nw300CountInstance[0].NO15}</label><label class="evnum" style="display: none;">${nw300EverInstance[0].NO15}</label></td>     <td class="tbody3td"><label class="sernum1">16</label><label class="cnum" style="display: none;">${nw300CountInstance[0].NO16}</label><label class="evnum" style="display: none;">${nw300EverInstance[0].NO16}</label></td>
                <td class="tbody3td"><label class="sernum1">17</label><label class="cnum" style="display: none;">${nw300CountInstance[0].NO17}</label><label class="evnum" style="display: none;">${nw300EverInstance[0].NO17}</label></td>     <td class="tbody3td"><label class="sernum1">18</label><label class="cnum" style="display: none;">${nw300CountInstance[0].NO18}</label><label class="evnum" style="display: none;">${nw300EverInstance[0].NO18}</label></td>
                <td class="tbody3td"><label class="sernum1">19</label><label class="cnum" style="display: none;">${nw300CountInstance[0].NO19}</label><label class="evnum" style="display: none;">${nw300EverInstance[0].NO19}</label></td>     <td class="tbody3td"><label class="sernum1">20</label><label class="cnum" style="display: none;">${nw300CountInstance[0].NO20}</label><label class="evnum" style="display: none;">${nw300EverInstance[0].NO20}</label></td>
                <td class="tbody3td"><label class="sernum1">21</label><label class="cnum" style="display: none;">${nw300CountInstance[0].NO21}</label><label class="evnum" style="display: none;">${nw300EverInstance[0].NO21}</label></td>     <td class="tbody3td"><label class="sernum1">22</label><label class="cnum" style="display: none;">${nw300CountInstance[0].NO22}</label><label class="evnum" style="display: none;">${nw300EverInstance[0].NO22}</label></td>
                <td class="tbody3td"><label class="sernum1">23</label><label class="cnum" style="display: none;">${nw300CountInstance[0].NO23}</label><label class="evnum" style="display: none;">${nw300EverInstance[0].NO23}</label></td>     <td class="tbody3td"><label class="sernum1">24</label><label class="cnum" style="display: none;">${nw300CountInstance[0].NO24}</label><label class="evnum" style="display: none;">${nw300EverInstance[0].NO24}</label></td>
                <td class="tbody3td"><label class="sernum1">25</label><label class="cnum" style="display: none;">${nw300CountInstance[0].NO25}</label><label class="evnum" style="display: none;">${nw300EverInstance[0].NO25}</label></td>     <td class="tbody3td"><label class="sernum1">26</label><label class="cnum" style="display: none;">${nw300CountInstance[0].NO26}</label><label class="evnum" style="display: none;">${nw300EverInstance[0].NO26}</label></td>
                <td class="tbody3td"><label class="sernum1">27</label><label class="cnum" style="display: none;">${nw300CountInstance[0].NO27}</label><label class="evnum" style="display: none;">${nw300EverInstance[0].NO27}</label></td>     <td class="tbody3td"><label class="sernum1">28</label><label class="cnum" style="display: none;">${nw300CountInstance[0].NO28}</label><label class="evnum" style="display: none;">${nw300EverInstance[0].NO28}</label></td>
                <td class="tbody3td"><label class="sernum1">29</label><label class="cnum" style="display: none;">${nw300CountInstance[0].NO29}</label><label class="evnum" style="display: none;">${nw300EverInstance[0].NO29}</label></td>     <td class="tbody3td"><label class="sernum1">30</label><label class="cnum" style="display: none;">${nw300CountInstance[0].NO30}</label><label class="evnum" style="display: none;">${nw300EverInstance[0].NO30}</label></td>
                <td class="tbody3td"><label class="sernum1">31</label><label class="cnum" style="display: none;">${nw300CountInstance[0].NO31}</label><label class="evnum" style="display: none;">${nw300EverInstance[0].NO31}</label></td>     <td class="tbody3td"><label class="sernum1">32</label><label class="cnum" style="display: none;">${nw300CountInstance[0].NO32}</label><label class="evnum" style="display: none;">${nw300EverInstance[0].NO32}</label></td>
                <td class="tbody3td"><label class="sernum1">33</label><label class="cnum" style="display: none;">${nw300CountInstance[0].NO33}</label><label class="evnum" style="display: none;">${nw300EverInstance[0].NO33}</label></td>     <td class="tbody3td"><label class="sernum1">34</label><label class="cnum" style="display: none;">${nw300CountInstance[0].NO34}</label><label class="evnum" style="display: none;">${nw300EverInstance[0].NO34}</label></td>
                <td class="tbody3td"><label class="sernum1">35</label><label class="cnum" style="display: none;">${nw300CountInstance[0].NO35}</label><label class="evnum" style="display: none;">${nw300EverInstance[0].NO35}</label></td>     <td class="tbody3td"><label class="sernum1">36</label><label class="cnum" style="display: none;">${nw300CountInstance[0].NO36}</label><label class="evnum" style="display: none;">${nw300EverInstance[0].NO36}</label></td>
                <td class="tbody3td"><label class="sernum1">37</label><label class="cnum" style="display: none;">${nw300CountInstance[0].NO37}</label><label class="evnum" style="display: none;">${nw300EverInstance[0].NO37}</label></td>     <td class="tbody3td"><label class="sernum1">38</label><label class="cnum" style="display: none;">${nw300CountInstance[0].NO38}</label><label class="evnum" style="display: none;">${nw300EverInstance[0].NO38}</label></td>
                <td class="tbody3td"><label class="sernum1">39</label><label class="cnum" style="display: none;">${nw300CountInstance[0].NO39}</label><label class="evnum" style="display: none;">${nw300EverInstance[0].NO39}</label></td>     <td class="tbody3td"><label class="sernum1">40</label><label class="cnum" style="display: none;">${nw300CountInstance[0].NO40}</label><label class="evnum" style="display: none;">${nw300EverInstance[0].NO40}</label></td>
                <td class="tbody3td"><label class="sernum1">41</label><label class="cnum" style="display: none;">${nw300CountInstance[0].NO41}</label><label class="evnum" style="display: none;">${nw300EverInstance[0].NO41}</label></td>     <td class="tbody3td"><label class="sernum1">42</label><label class="cnum" style="display: none;">${nw300CountInstance[0].NO42}</label><label class="evnum" style="display: none;">${nw300EverInstance[0].NO42}</label></td>
                <td class="tbody3td"><label class="sernum1">43</label><label class="cnum" style="display: none;">${nw300CountInstance[0].NO43}</label><label class="evnum" style="display: none;">${nw300EverInstance[0].NO43}</label></td>     <td class="tbody3td"><label class="sernum1">44</label><label class="cnum" style="display: none;">${nw300CountInstance[0].NO44}</label><label class="evnum" style="display: none;">${nw300EverInstance[0].NO44}</label></td>
                <td class="tbody3td"><label class="sernum1">45</label><label class="cnum" style="display: none;">${nw300CountInstance[0].NO45}</label><label class="evnum" style="display: none;">${nw300EverInstance[0].NO45}</label></td>     <td class="tbody3td"><label class="sernum1">46</label><label class="cnum" style="display: none;">${nw300CountInstance[0].NO46}</label><label class="evnum" style="display: none;">${nw300EverInstance[0].NO46}</label></td>
                <td class="tbody3td"><label class="sernum1">47</label><label class="cnum" style="display: none;">${nw300CountInstance[0].NO47}</label><label class="evnum" style="display: none;">${nw300EverInstance[0].NO47}</label></td>     <td class="tbody3td"><label class="sernum1">48</label><label class="cnum" style="display: none;">${nw300CountInstance[0].NO48}</label><label class="evnum" style="display: none;">${nw300EverInstance[0].NO48}</label></td>
                <td class="tbody3td"><label class="sernum1">49</label><label class="cnum" style="display: none;">${nw300CountInstance[0].NO49}</label><label class="evnum" style="display: none;">${nw300EverInstance[0].NO49}</label></td>
            </tr>
            </tbody>

            <tbody id="tbody4">
            <tr>
                <td style="background-color: #FFAEB9; text-align: center;" colspan="2">
                    <a href="javascript:void(0);" style="color:#000000;" onclick="sortNumberCount();">出現次數<img id="imgCountNumber" src="${resource(dir: 'images/icon', file: 'up.png')}" width="23px" height="23px" border="0"></a>
                </td>
                <td class="tbody4td" style=" height: 80px" > <div class ="lineNumber" style="width:20px; height: ${80-((60*(nw300CountInstance[0].NO01))/maxNum)}px;"><label class="onum" style="display: none;">01</label><label class="evnum" style="display: none;"> ${nw300EverInstance[0].NO01} </label><label class="cnum"> ${nw300CountInstance[0].NO01} </label></div><div class ="linepercent" style="width:20px; height: ${(60*(nw300CountInstance[0].NO01))/maxNum}px;"></div></td>
                <td class="tbody4td" style=" height: 80px" > <div class ="lineNumber" style="width:20px; height: ${80-((60*(nw300CountInstance[0].NO02))/maxNum)}px;"><label class="onum" style="display: none;">02</label><label class="evnum" style="display: none;"> ${nw300EverInstance[0].NO02} </label><label class="cnum"> ${nw300CountInstance[0].NO02} </label></div><div class ="linepercent" style="width:20px; height: ${(60*(nw300CountInstance[0].NO02))/maxNum}px;"></div></td>
                <td class="tbody4td" style=" height: 80px" > <div class ="lineNumber" style="width:20px; height: ${80-((60*(nw300CountInstance[0].NO03))/maxNum)}px;"><label class="onum" style="display: none;">03</label><label class="evnum" style="display: none;"> ${nw300EverInstance[0].NO03} </label><label class="cnum"> ${nw300CountInstance[0].NO03} </label></div><div class ="linepercent" style="width:20px; height: ${(60*(nw300CountInstance[0].NO03))/maxNum}px;"></div></td>
                <td class="tbody4td" style=" height: 80px" > <div class ="lineNumber" style="width:20px; height: ${80-((60*(nw300CountInstance[0].NO04))/maxNum)}px;"><label class="onum" style="display: none;">04</label><label class="evnum" style="display: none;"> ${nw300EverInstance[0].NO04} </label><label class="cnum"> ${nw300CountInstance[0].NO04} </label></div><div class ="linepercent" style="width:20px; height: ${(60*(nw300CountInstance[0].NO04))/maxNum}px;"></div></td>
                <td class="tbody4td" style=" height: 80px" > <div class ="lineNumber" style="width:20px; height: ${80-((60*(nw300CountInstance[0].NO05))/maxNum)}px;"><label class="onum" style="display: none;">05</label><label class="evnum" style="display: none;"> ${nw300EverInstance[0].NO05} </label><label class="cnum"> ${nw300CountInstance[0].NO05} </label></div><div class ="linepercent" style="width:20px; height: ${(60*(nw300CountInstance[0].NO05))/maxNum}px;"></div></td>
                <td class="tbody4td" style=" height: 80px" > <div class ="lineNumber" style="width:20px; height: ${80-((60*(nw300CountInstance[0].NO06))/maxNum)}px;"><label class="onum" style="display: none;">06</label><label class="evnum" style="display: none;"> ${nw300EverInstance[0].NO06} </label><label class="cnum"> ${nw300CountInstance[0].NO06} </label></div><div class ="linepercent" style="width:20px; height: ${(60*(nw300CountInstance[0].NO06))/maxNum}px;"></div></td>
                <td class="tbody4td" style=" height: 80px" > <div class ="lineNumber" style="width:20px; height: ${80-((60*(nw300CountInstance[0].NO07))/maxNum)}px;"><label class="onum" style="display: none;">07</label><label class="evnum" style="display: none;"> ${nw300EverInstance[0].NO07} </label><label class="cnum"> ${nw300CountInstance[0].NO07} </label></div><div class ="linepercent" style="width:20px; height: ${(60*(nw300CountInstance[0].NO07))/maxNum}px;"></div></td>
                <td class="tbody4td" style=" height: 80px" > <div class ="lineNumber" style="width:20px; height: ${80-((60*(nw300CountInstance[0].NO08))/maxNum)}px;"><label class="onum" style="display: none;">08</label><label class="evnum" style="display: none;"> ${nw300EverInstance[0].NO08} </label><label class="cnum"> ${nw300CountInstance[0].NO08} </label></div><div class ="linepercent" style="width:20px; height: ${(60*(nw300CountInstance[0].NO08))/maxNum}px;"></div></td>
                <td class="tbody4td" style=" height: 80px" > <div class ="lineNumber" style="width:20px; height: ${80-((60*(nw300CountInstance[0].NO09))/maxNum)}px;"><label class="onum" style="display: none;">09</label><label class="evnum" style="display: none;"> ${nw300EverInstance[0].NO09} </label><label class="cnum"> ${nw300CountInstance[0].NO09} </label></div><div class ="linepercent" style="width:20px; height: ${(60*(nw300CountInstance[0].NO09))/maxNum}px;"></div></td>
                <td class="tbody4td" style=" height: 80px" > <div class ="lineNumber" style="width:20px; height: ${80-((60*(nw300CountInstance[0].NO10))/maxNum)}px;"><label class="onum" style="display: none;">10</label><label class="evnum" style="display: none;"> ${nw300EverInstance[0].NO10} </label><label class="cnum"> ${nw300CountInstance[0].NO10} </label></div><div class ="linepercent" style="width:20px; height: ${(60*(nw300CountInstance[0].NO10))/maxNum}px;"></div></td>
                <td class="tbody4td" style=" height: 80px" > <div class ="lineNumber" style="width:20px; height: ${80-((60*(nw300CountInstance[0].NO11))/maxNum)}px;"><label class="onum" style="display: none;">11</label><label class="evnum" style="display: none;"> ${nw300EverInstance[0].NO11} </label><label class="cnum"> ${nw300CountInstance[0].NO11} </label></div><div class ="linepercent" style="width:20px; height: ${(60*(nw300CountInstance[0].NO11))/maxNum}px;"></div></td>
                <td class="tbody4td" style=" height: 80px" > <div class ="lineNumber" style="width:20px; height: ${80-((60*(nw300CountInstance[0].NO12))/maxNum)}px;"><label class="onum" style="display: none;">12</label><label class="evnum" style="display: none;"> ${nw300EverInstance[0].NO12} </label><label class="cnum"> ${nw300CountInstance[0].NO12} </label></div><div class ="linepercent" style="width:20px; height: ${(60*(nw300CountInstance[0].NO12))/maxNum}px;"></div></td>
                <td class="tbody4td" style=" height: 80px" > <div class ="lineNumber" style="width:20px; height: ${80-((60*(nw300CountInstance[0].NO13))/maxNum)}px;"><label class="onum" style="display: none;">13</label><label class="evnum" style="display: none;"> ${nw300EverInstance[0].NO13} </label><label class="cnum"> ${nw300CountInstance[0].NO13} </label></div><div class ="linepercent" style="width:20px; height: ${(60*(nw300CountInstance[0].NO13))/maxNum}px;"></div></td>
                <td class="tbody4td" style=" height: 80px" > <div class ="lineNumber" style="width:20px; height: ${80-((60*(nw300CountInstance[0].NO14))/maxNum)}px;"><label class="onum" style="display: none;">14</label><label class="evnum" style="display: none;"> ${nw300EverInstance[0].NO14} </label><label class="cnum"> ${nw300CountInstance[0].NO14} </label></div><div class ="linepercent" style="width:20px; height: ${(60*(nw300CountInstance[0].NO14))/maxNum}px;"></div></td>
                <td class="tbody4td" style=" height: 80px" > <div class ="lineNumber" style="width:20px; height: ${80-((60*(nw300CountInstance[0].NO15))/maxNum)}px;"><label class="onum" style="display: none;">15</label><label class="evnum" style="display: none;"> ${nw300EverInstance[0].NO15} </label><label class="cnum"> ${nw300CountInstance[0].NO15} </label></div><div class ="linepercent" style="width:20px; height: ${(60*(nw300CountInstance[0].NO15))/maxNum}px;"></div></td>
                <td class="tbody4td" style=" height: 80px" > <div class ="lineNumber" style="width:20px; height: ${80-((60*(nw300CountInstance[0].NO16))/maxNum)}px;"><label class="onum" style="display: none;">16</label><label class="evnum" style="display: none;"> ${nw300EverInstance[0].NO16} </label><label class="cnum"> ${nw300CountInstance[0].NO16} </label></div><div class ="linepercent" style="width:20px; height: ${(60*(nw300CountInstance[0].NO16))/maxNum}px;"></div></td>
                <td class="tbody4td" style=" height: 80px" > <div class ="lineNumber" style="width:20px; height: ${80-((60*(nw300CountInstance[0].NO17))/maxNum)}px;"><label class="onum" style="display: none;">17</label><label class="evnum" style="display: none;"> ${nw300EverInstance[0].NO17} </label><label class="cnum"> ${nw300CountInstance[0].NO17} </label></div><div class ="linepercent" style="width:20px; height: ${(60*(nw300CountInstance[0].NO17))/maxNum}px;"></div></td>
                <td class="tbody4td" style=" height: 80px" > <div class ="lineNumber" style="width:20px; height: ${80-((60*(nw300CountInstance[0].NO18))/maxNum)}px;"><label class="onum" style="display: none;">18</label><label class="evnum" style="display: none;"> ${nw300EverInstance[0].NO18} </label><label class="cnum"> ${nw300CountInstance[0].NO18} </label></div><div class ="linepercent" style="width:20px; height: ${(60*(nw300CountInstance[0].NO18))/maxNum}px;"></div></td>
                <td class="tbody4td" style=" height: 80px" > <div class ="lineNumber" style="width:20px; height: ${80-((60*(nw300CountInstance[0].NO19))/maxNum)}px;"><label class="onum" style="display: none;">19</label><label class="evnum" style="display: none;"> ${nw300EverInstance[0].NO19} </label><label class="cnum"> ${nw300CountInstance[0].NO19} </label></div><div class ="linepercent" style="width:20px; height: ${(60*(nw300CountInstance[0].NO19))/maxNum}px;"></div></td>
                <td class="tbody4td" style=" height: 80px" > <div class ="lineNumber" style="width:20px; height: ${80-((60*(nw300CountInstance[0].NO20))/maxNum)}px;"><label class="onum" style="display: none;">20</label><label class="evnum" style="display: none;"> ${nw300EverInstance[0].NO20} </label><label class="cnum"> ${nw300CountInstance[0].NO20} </label></div><div class ="linepercent" style="width:20px; height: ${(60*(nw300CountInstance[0].NO20))/maxNum}px;"></div></td>
                <td class="tbody4td" style=" height: 80px" > <div class ="lineNumber" style="width:20px; height: ${80-((60*(nw300CountInstance[0].NO21))/maxNum)}px;"><label class="onum" style="display: none;">21</label><label class="evnum" style="display: none;"> ${nw300EverInstance[0].NO21} </label><label class="cnum"> ${nw300CountInstance[0].NO21} </label></div><div class ="linepercent" style="width:20px; height: ${(60*(nw300CountInstance[0].NO21))/maxNum}px;"></div></td>
                <td class="tbody4td" style=" height: 80px" > <div class ="lineNumber" style="width:20px; height: ${80-((60*(nw300CountInstance[0].NO22))/maxNum)}px;"><label class="onum" style="display: none;">22</label><label class="evnum" style="display: none;"> ${nw300EverInstance[0].NO22} </label><label class="cnum"> ${nw300CountInstance[0].NO22} </label></div><div class ="linepercent" style="width:20px; height: ${(60*(nw300CountInstance[0].NO22))/maxNum}px;"></div></td>
                <td class="tbody4td" style=" height: 80px" > <div class ="lineNumber" style="width:20px; height: ${80-((60*(nw300CountInstance[0].NO23))/maxNum)}px;"><label class="onum" style="display: none;">23</label><label class="evnum" style="display: none;"> ${nw300EverInstance[0].NO23} </label><label class="cnum"> ${nw300CountInstance[0].NO23} </label></div><div class ="linepercent" style="width:20px; height: ${(60*(nw300CountInstance[0].NO23))/maxNum}px;"></div></td>
                <td class="tbody4td" style=" height: 80px" > <div class ="lineNumber" style="width:20px; height: ${80-((60*(nw300CountInstance[0].NO24))/maxNum)}px;"><label class="onum" style="display: none;">24</label><label class="evnum" style="display: none;"> ${nw300EverInstance[0].NO24} </label><label class="cnum"> ${nw300CountInstance[0].NO24} </label></div><div class ="linepercent" style="width:20px; height: ${(60*(nw300CountInstance[0].NO24))/maxNum}px;"></div></td>
                <td class="tbody4td" style=" height: 80px" > <div class ="lineNumber" style="width:20px; height: ${80-((60*(nw300CountInstance[0].NO25))/maxNum)}px;"><label class="onum" style="display: none;">25</label><label class="evnum" style="display: none;"> ${nw300EverInstance[0].NO25} </label><label class="cnum"> ${nw300CountInstance[0].NO25} </label></div><div class ="linepercent" style="width:20px; height: ${(60*(nw300CountInstance[0].NO25))/maxNum}px;"></div></td>
                <td class="tbody4td" style=" height: 80px" > <div class ="lineNumber" style="width:20px; height: ${80-((60*(nw300CountInstance[0].NO26))/maxNum)}px;"><label class="onum" style="display: none;">26</label><label class="evnum" style="display: none;"> ${nw300EverInstance[0].NO26} </label><label class="cnum"> ${nw300CountInstance[0].NO26} </label></div><div class ="linepercent" style="width:20px; height: ${(60*(nw300CountInstance[0].NO26))/maxNum}px;"></div></td>
                <td class="tbody4td" style=" height: 80px" > <div class ="lineNumber" style="width:20px; height: ${80-((60*(nw300CountInstance[0].NO27))/maxNum)}px;"><label class="onum" style="display: none;">27</label><label class="evnum" style="display: none;"> ${nw300EverInstance[0].NO27} </label><label class="cnum"> ${nw300CountInstance[0].NO27} </label></div><div class ="linepercent" style="width:20px; height: ${(60*(nw300CountInstance[0].NO27))/maxNum}px;"></div></td>
                <td class="tbody4td" style=" height: 80px" > <div class ="lineNumber" style="width:20px; height: ${80-((60*(nw300CountInstance[0].NO28))/maxNum)}px;"><label class="onum" style="display: none;">28</label><label class="evnum" style="display: none;"> ${nw300EverInstance[0].NO28} </label><label class="cnum"> ${nw300CountInstance[0].NO28} </label></div><div class ="linepercent" style="width:20px; height: ${(60*(nw300CountInstance[0].NO28))/maxNum}px;"></div></td>
                <td class="tbody4td" style=" height: 80px" > <div class ="lineNumber" style="width:20px; height: ${80-((60*(nw300CountInstance[0].NO29))/maxNum)}px;"><label class="onum" style="display: none;">29</label><label class="evnum" style="display: none;"> ${nw300EverInstance[0].NO29} </label><label class="cnum"> ${nw300CountInstance[0].NO29} </label></div><div class ="linepercent" style="width:20px; height: ${(60*(nw300CountInstance[0].NO29))/maxNum}px;"></div></td>
                <td class="tbody4td" style=" height: 80px" > <div class ="lineNumber" style="width:20px; height: ${80-((60*(nw300CountInstance[0].NO30))/maxNum)}px;"><label class="onum" style="display: none;">30</label><label class="evnum" style="display: none;"> ${nw300EverInstance[0].NO30} </label><label class="cnum"> ${nw300CountInstance[0].NO30} </label></div><div class ="linepercent" style="width:20px; height: ${(60*(nw300CountInstance[0].NO30))/maxNum}px;"></div></td>
                <td class="tbody4td" style=" height: 80px" > <div class ="lineNumber" style="width:20px; height: ${80-((60*(nw300CountInstance[0].NO31))/maxNum)}px;"><label class="onum" style="display: none;">31</label><label class="evnum" style="display: none;"> ${nw300EverInstance[0].NO31} </label><label class="cnum"> ${nw300CountInstance[0].NO31} </label></div><div class ="linepercent" style="width:20px; height: ${(60*(nw300CountInstance[0].NO31))/maxNum}px;"></div></td>
                <td class="tbody4td" style=" height: 80px" > <div class ="lineNumber" style="width:20px; height: ${80-((60*(nw300CountInstance[0].NO32))/maxNum)}px;"><label class="onum" style="display: none;">32</label><label class="evnum" style="display: none;"> ${nw300EverInstance[0].NO32} </label><label class="cnum"> ${nw300CountInstance[0].NO32} </label></div><div class ="linepercent" style="width:20px; height: ${(60*(nw300CountInstance[0].NO32))/maxNum}px;"></div></td>
                <td class="tbody4td" style=" height: 80px" > <div class ="lineNumber" style="width:20px; height: ${80-((60*(nw300CountInstance[0].NO33))/maxNum)}px;"><label class="onum" style="display: none;">33</label><label class="evnum" style="display: none;"> ${nw300EverInstance[0].NO33} </label><label class="cnum"> ${nw300CountInstance[0].NO33} </label></div><div class ="linepercent" style="width:20px; height: ${(60*(nw300CountInstance[0].NO33))/maxNum}px;"></div></td>
                <td class="tbody4td" style=" height: 80px" > <div class ="lineNumber" style="width:20px; height: ${80-((60*(nw300CountInstance[0].NO34))/maxNum)}px;"><label class="onum" style="display: none;">34</label><label class="evnum" style="display: none;"> ${nw300EverInstance[0].NO34} </label><label class="cnum"> ${nw300CountInstance[0].NO34} </label></div><div class ="linepercent" style="width:20px; height: ${(60*(nw300CountInstance[0].NO34))/maxNum}px;"></div></td>
                <td class="tbody4td" style=" height: 80px" > <div class ="lineNumber" style="width:20px; height: ${80-((60*(nw300CountInstance[0].NO35))/maxNum)}px;"><label class="onum" style="display: none;">35</label><label class="evnum" style="display: none;"> ${nw300EverInstance[0].NO35} </label><label class="cnum"> ${nw300CountInstance[0].NO35} </label></div><div class ="linepercent" style="width:20px; height: ${(60*(nw300CountInstance[0].NO35))/maxNum}px;"></div></td>
                <td class="tbody4td" style=" height: 80px" > <div class ="lineNumber" style="width:20px; height: ${80-((60*(nw300CountInstance[0].NO36))/maxNum)}px;"><label class="onum" style="display: none;">36</label><label class="evnum" style="display: none;"> ${nw300EverInstance[0].NO36} </label><label class="cnum"> ${nw300CountInstance[0].NO36} </label></div><div class ="linepercent" style="width:20px; height: ${(60*(nw300CountInstance[0].NO36))/maxNum}px;"></div></td>
                <td class="tbody4td" style=" height: 80px" > <div class ="lineNumber" style="width:20px; height: ${80-((60*(nw300CountInstance[0].NO37))/maxNum)}px;"><label class="onum" style="display: none;">37</label><label class="evnum" style="display: none;"> ${nw300EverInstance[0].NO37} </label><label class="cnum"> ${nw300CountInstance[0].NO37} </label></div><div class ="linepercent" style="width:20px; height: ${(60*(nw300CountInstance[0].NO37))/maxNum}px;"></div></td>
                <td class="tbody4td" style=" height: 80px" > <div class ="lineNumber" style="width:20px; height: ${80-((60*(nw300CountInstance[0].NO38))/maxNum)}px;"><label class="onum" style="display: none;">38</label><label class="evnum" style="display: none;"> ${nw300EverInstance[0].NO38} </label><label class="cnum"> ${nw300CountInstance[0].NO38} </label></div><div class ="linepercent" style="width:20px; height: ${(60*(nw300CountInstance[0].NO38))/maxNum}px;"></div></td>
                <td class="tbody4td" style=" height: 80px" > <div class ="lineNumber" style="width:20px; height: ${80-((60*(nw300CountInstance[0].NO39))/maxNum)}px;"><label class="onum" style="display: none;">39</label><label class="evnum" style="display: none;"> ${nw300EverInstance[0].NO39} </label><label class="cnum"> ${nw300CountInstance[0].NO39} </label></div><div class ="linepercent" style="width:20px; height: ${(60*(nw300CountInstance[0].NO39))/maxNum}px;"></div></td>
                <td class="tbody4td" style=" height: 80px" > <div class ="lineNumber" style="width:20px; height: ${80-((60*(nw300CountInstance[0].NO40))/maxNum)}px;"><label class="onum" style="display: none;">40</label><label class="evnum" style="display: none;"> ${nw300EverInstance[0].NO40} </label><label class="cnum"> ${nw300CountInstance[0].NO40} </label></div><div class ="linepercent" style="width:20px; height: ${(60*(nw300CountInstance[0].NO40))/maxNum}px;"></div></td>
                <td class="tbody4td" style=" height: 80px" > <div class ="lineNumber" style="width:20px; height: ${80-((60*(nw300CountInstance[0].NO41))/maxNum)}px;"><label class="onum" style="display: none;">41</label><label class="evnum" style="display: none;"> ${nw300EverInstance[0].NO41} </label><label class="cnum"> ${nw300CountInstance[0].NO41} </label></div><div class ="linepercent" style="width:20px; height: ${(60*(nw300CountInstance[0].NO41))/maxNum}px;"></div></td>
                <td class="tbody4td" style=" height: 80px" > <div class ="lineNumber" style="width:20px; height: ${80-((60*(nw300CountInstance[0].NO42))/maxNum)}px;"><label class="onum" style="display: none;">42</label><label class="evnum" style="display: none;"> ${nw300EverInstance[0].NO42} </label><label class="cnum"> ${nw300CountInstance[0].NO42} </label></div><div class ="linepercent" style="width:20px; height: ${(60*(nw300CountInstance[0].NO42))/maxNum}px;"></div></td>
                <td class="tbody4td" style=" height: 80px" > <div class ="lineNumber" style="width:20px; height: ${80-((60*(nw300CountInstance[0].NO43))/maxNum)}px;"><label class="onum" style="display: none;">43</label><label class="evnum" style="display: none;"> ${nw300EverInstance[0].NO43} </label><label class="cnum"> ${nw300CountInstance[0].NO43} </label></div><div class ="linepercent" style="width:20px; height: ${(60*(nw300CountInstance[0].NO43))/maxNum}px;"></div></td>
                <td class="tbody4td" style=" height: 80px" > <div class ="lineNumber" style="width:20px; height: ${80-((60*(nw300CountInstance[0].NO44))/maxNum)}px;"><label class="onum" style="display: none;">44</label><label class="evnum" style="display: none;"> ${nw300EverInstance[0].NO44} </label><label class="cnum"> ${nw300CountInstance[0].NO44} </label></div><div class ="linepercent" style="width:20px; height: ${(60*(nw300CountInstance[0].NO44))/maxNum}px;"></div></td>
                <td class="tbody4td" style=" height: 80px" > <div class ="lineNumber" style="width:20px; height: ${80-((60*(nw300CountInstance[0].NO45))/maxNum)}px;"><label class="onum" style="display: none;">45</label><label class="evnum" style="display: none;"> ${nw300EverInstance[0].NO45} </label><label class="cnum"> ${nw300CountInstance[0].NO45} </label></div><div class ="linepercent" style="width:20px; height: ${(60*(nw300CountInstance[0].NO45))/maxNum}px;"></div></td>
                <td class="tbody4td" style=" height: 80px" > <div class ="lineNumber" style="width:20px; height: ${80-((60*(nw300CountInstance[0].NO46))/maxNum)}px;"><label class="onum" style="display: none;">46</label><label class="evnum" style="display: none;"> ${nw300EverInstance[0].NO46} </label><label class="cnum"> ${nw300CountInstance[0].NO46} </label></div><div class ="linepercent" style="width:20px; height: ${(60*(nw300CountInstance[0].NO46))/maxNum}px;"></div></td>
                <td class="tbody4td" style=" height: 80px" > <div class ="lineNumber" style="width:20px; height: ${80-((60*(nw300CountInstance[0].NO47))/maxNum)}px;"><label class="onum" style="display: none;">47</label><label class="evnum" style="display: none;"> ${nw300EverInstance[0].NO47} </label><label class="cnum"> ${nw300CountInstance[0].NO47} </label></div><div class ="linepercent" style="width:20px; height: ${(60*(nw300CountInstance[0].NO47))/maxNum}px;"></div></td>
                <td class="tbody4td" style=" height: 80px" > <div class ="lineNumber" style="width:20px; height: ${80-((60*(nw300CountInstance[0].NO48))/maxNum)}px;"><label class="onum" style="display: none;">48</label><label class="evnum" style="display: none;"> ${nw300EverInstance[0].NO48} </label><label class="cnum"> ${nw300CountInstance[0].NO48} </label></div><div class ="linepercent" style="width:20px; height: ${(60*(nw300CountInstance[0].NO48))/maxNum}px;"></div></td>
                <td class="tbody4td" style=" height: 80px" > <div class ="lineNumber" style="width:20px; height: ${80-((60*(nw300CountInstance[0].NO49))/maxNum)}px;"><label class="onum" style="display: none;">49</label><label class="evnum" style="display: none;"> ${nw300EverInstance[0].NO49} </label><label class="cnum"> ${nw300CountInstance[0].NO49} </label></div><div class ="linepercent" style="width:20px; height: ${(60*(nw300CountInstance[0].NO49))/maxNum}px;"></div></td>
            </tr>
            </tbody>


        <tbody id="tbody5">
        <tr>
            <td style="background-color: #90EE90; text-align: center;" colspan="2">
                <a href="javascript:void(0);" style="color:#000000;" onclick="sortEverNumber();">最久未開<img id="imgEverNumber" src="${resource(dir: 'images/icon', file: 'up.png')}" width="23px" height="23px" border="0"></a>
            </td>
            <td class="tbody5td" style=" height: 80px" > <div class ="linepercentEver" style="width:20px; height: ${(60*(nw300EverInstance[0].NO01))/everNum}px;"></div>    <div class ="lineNumberEver" style="width:20px; height: ${80-((60*(nw300EverInstance[0].NO01))/everNum)}px;"><label class="onum" style="display: none;">01</label>  <label class="evnum"> ${nw300EverInstance[0].NO01} </label>   <label style="display: none;" class="cnum"> ${nw300CountInstance[0].NO01} </label></div></td>
            <td class="tbody5td" style=" height: 80px" > <div class ="linepercentEver" style="width:20px; height: ${(60*(nw300EverInstance[0].NO02))/everNum}px;"></div>    <div class ="lineNumberEver" style="width:20px; height: ${80-((60*(nw300EverInstance[0].NO02))/everNum)}px;"><label class="onum" style="display: none;">02</label>  <label class="evnum"> ${nw300EverInstance[0].NO02} </label>   <label style="display: none;" class="cnum"> ${nw300CountInstance[0].NO02} </label></div></td>
            <td class="tbody5td" style=" height: 80px" > <div class ="linepercentEver" style="width:20px; height: ${(60*(nw300EverInstance[0].NO03))/everNum}px;"></div>    <div class ="lineNumberEver" style="width:20px; height: ${80-((60*(nw300EverInstance[0].NO03))/everNum)}px;"><label class="onum" style="display: none;">03</label>  <label class="evnum"> ${nw300EverInstance[0].NO03} </label>   <label style="display: none;" class="cnum"> ${nw300CountInstance[0].NO03} </label></div></td>
            <td class="tbody5td" style=" height: 80px" > <div class ="linepercentEver" style="width:20px; height: ${(60*(nw300EverInstance[0].NO04))/everNum}px;"></div>    <div class ="lineNumberEver" style="width:20px; height: ${80-((60*(nw300EverInstance[0].NO04))/everNum)}px;"><label class="onum" style="display: none;">04</label>  <label class="evnum"> ${nw300EverInstance[0].NO04} </label>   <label style="display: none;" class="cnum"> ${nw300CountInstance[0].NO04} </label></div></td>
            <td class="tbody5td" style=" height: 80px" > <div class ="linepercentEver" style="width:20px; height: ${(60*(nw300EverInstance[0].NO05))/everNum}px;"></div>    <div class ="lineNumberEver" style="width:20px; height: ${80-((60*(nw300EverInstance[0].NO05))/everNum)}px;"><label class="onum" style="display: none;">05</label>  <label class="evnum"> ${nw300EverInstance[0].NO05} </label>   <label style="display: none;" class="cnum"> ${nw300CountInstance[0].NO05} </label></div></td>
            <td class="tbody5td" style=" height: 80px" > <div class ="linepercentEver" style="width:20px; height: ${(60*(nw300EverInstance[0].NO06))/everNum}px;"></div>    <div class ="lineNumberEver" style="width:20px; height: ${80-((60*(nw300EverInstance[0].NO06))/everNum)}px;"><label class="onum" style="display: none;">06</label>  <label class="evnum"> ${nw300EverInstance[0].NO06} </label>   <label style="display: none;" class="cnum"> ${nw300CountInstance[0].NO06} </label></div></td>
            <td class="tbody5td" style=" height: 80px" > <div class ="linepercentEver" style="width:20px; height: ${(60*(nw300EverInstance[0].NO07))/everNum}px;"></div>    <div class ="lineNumberEver" style="width:20px; height: ${80-((60*(nw300EverInstance[0].NO07))/everNum)}px;"><label class="onum" style="display: none;">07</label>  <label class="evnum"> ${nw300EverInstance[0].NO07} </label>   <label style="display: none;" class="cnum"> ${nw300CountInstance[0].NO07} </label></div></td>
            <td class="tbody5td" style=" height: 80px" > <div class ="linepercentEver" style="width:20px; height: ${(60*(nw300EverInstance[0].NO08))/everNum}px;"></div>    <div class ="lineNumberEver" style="width:20px; height: ${80-((60*(nw300EverInstance[0].NO08))/everNum)}px;"><label class="onum" style="display: none;">08</label>  <label class="evnum"> ${nw300EverInstance[0].NO08} </label>   <label style="display: none;" class="cnum"> ${nw300CountInstance[0].NO08} </label></div></td>
            <td class="tbody5td" style=" height: 80px" > <div class ="linepercentEver" style="width:20px; height: ${(60*(nw300EverInstance[0].NO09))/everNum}px;"></div>    <div class ="lineNumberEver" style="width:20px; height: ${80-((60*(nw300EverInstance[0].NO09))/everNum)}px;"><label class="onum" style="display: none;">09</label>  <label class="evnum"> ${nw300EverInstance[0].NO09} </label>   <label style="display: none;" class="cnum"> ${nw300CountInstance[0].NO09} </label></div></td>
            <td class="tbody5td" style=" height: 80px" > <div class ="linepercentEver" style="width:20px; height: ${(60*(nw300EverInstance[0].NO10))/everNum}px;"></div>    <div class ="lineNumberEver" style="width:20px; height: ${80-((60*(nw300EverInstance[0].NO10))/everNum)}px;"><label class="onum" style="display: none;">10</label>  <label class="evnum"> ${nw300EverInstance[0].NO10} </label>   <label style="display: none;" class="cnum"> ${nw300CountInstance[0].NO10} </label></div></td>
            <td class="tbody5td" style=" height: 80px" > <div class ="linepercentEver" style="width:20px; height: ${(60*(nw300EverInstance[0].NO11))/everNum}px;"></div>    <div class ="lineNumberEver" style="width:20px; height: ${80-((60*(nw300EverInstance[0].NO11))/everNum)}px;"><label class="onum" style="display: none;">11</label>  <label class="evnum"> ${nw300EverInstance[0].NO11} </label>   <label style="display: none;" class="cnum"> ${nw300CountInstance[0].NO11} </label></div></td>
            <td class="tbody5td" style=" height: 80px" > <div class ="linepercentEver" style="width:20px; height: ${(60*(nw300EverInstance[0].NO12))/everNum}px;"></div>    <div class ="lineNumberEver" style="width:20px; height: ${80-((60*(nw300EverInstance[0].NO12))/everNum)}px;"><label class="onum" style="display: none;">12</label>  <label class="evnum"> ${nw300EverInstance[0].NO12} </label>   <label style="display: none;" class="cnum"> ${nw300CountInstance[0].NO12} </label></div></td>
            <td class="tbody5td" style=" height: 80px" > <div class ="linepercentEver" style="width:20px; height: ${(60*(nw300EverInstance[0].NO13))/everNum}px;"></div>    <div class ="lineNumberEver" style="width:20px; height: ${80-((60*(nw300EverInstance[0].NO13))/everNum)}px;"><label class="onum" style="display: none;">13</label>  <label class="evnum"> ${nw300EverInstance[0].NO13} </label>   <label style="display: none;" class="cnum"> ${nw300CountInstance[0].NO13} </label></div></td>
            <td class="tbody5td" style=" height: 80px" > <div class ="linepercentEver" style="width:20px; height: ${(60*(nw300EverInstance[0].NO14))/everNum}px;"></div>    <div class ="lineNumberEver" style="width:20px; height: ${80-((60*(nw300EverInstance[0].NO14))/everNum)}px;"><label class="onum" style="display: none;">14</label>  <label class="evnum"> ${nw300EverInstance[0].NO14} </label>   <label style="display: none;" class="cnum"> ${nw300CountInstance[0].NO14} </label></div></td>
            <td class="tbody5td" style=" height: 80px" > <div class ="linepercentEver" style="width:20px; height: ${(60*(nw300EverInstance[0].NO15))/everNum}px;"></div>    <div class ="lineNumberEver" style="width:20px; height: ${80-((60*(nw300EverInstance[0].NO15))/everNum)}px;"><label class="onum" style="display: none;">15</label>  <label class="evnum"> ${nw300EverInstance[0].NO15} </label>   <label style="display: none;" class="cnum"> ${nw300CountInstance[0].NO15} </label></div></td>
            <td class="tbody5td" style=" height: 80px" > <div class ="linepercentEver" style="width:20px; height: ${(60*(nw300EverInstance[0].NO16))/everNum}px;"></div>    <div class ="lineNumberEver" style="width:20px; height: ${80-((60*(nw300EverInstance[0].NO16))/everNum)}px;"><label class="onum" style="display: none;">16</label>  <label class="evnum"> ${nw300EverInstance[0].NO16} </label>   <label style="display: none;" class="cnum"> ${nw300CountInstance[0].NO16} </label></div></td>
            <td class="tbody5td" style=" height: 80px" > <div class ="linepercentEver" style="width:20px; height: ${(60*(nw300EverInstance[0].NO17))/everNum}px;"></div>    <div class ="lineNumberEver" style="width:20px; height: ${80-((60*(nw300EverInstance[0].NO17))/everNum)}px;"><label class="onum" style="display: none;">17</label>  <label class="evnum"> ${nw300EverInstance[0].NO17} </label>   <label style="display: none;" class="cnum"> ${nw300CountInstance[0].NO17} </label></div></td>
            <td class="tbody5td" style=" height: 80px" > <div class ="linepercentEver" style="width:20px; height: ${(60*(nw300EverInstance[0].NO18))/everNum}px;"></div>    <div class ="lineNumberEver" style="width:20px; height: ${80-((60*(nw300EverInstance[0].NO18))/everNum)}px;"><label class="onum" style="display: none;">18</label>  <label class="evnum"> ${nw300EverInstance[0].NO18} </label>   <label style="display: none;" class="cnum"> ${nw300CountInstance[0].NO18} </label></div></td>
            <td class="tbody5td" style=" height: 80px" > <div class ="linepercentEver" style="width:20px; height: ${(60*(nw300EverInstance[0].NO19))/everNum}px;"></div>    <div class ="lineNumberEver" style="width:20px; height: ${80-((60*(nw300EverInstance[0].NO19))/everNum)}px;"><label class="onum" style="display: none;">19</label>  <label class="evnum"> ${nw300EverInstance[0].NO19} </label>   <label style="display: none;" class="cnum"> ${nw300CountInstance[0].NO19} </label></div></td>
            <td class="tbody5td" style=" height: 80px" > <div class ="linepercentEver" style="width:20px; height: ${(60*(nw300EverInstance[0].NO20))/everNum}px;"></div>    <div class ="lineNumberEver" style="width:20px; height: ${80-((60*(nw300EverInstance[0].NO20))/everNum)}px;"><label class="onum" style="display: none;">20</label>  <label class="evnum"> ${nw300EverInstance[0].NO20} </label>   <label style="display: none;" class="cnum"> ${nw300CountInstance[0].NO20} </label></div></td>
            <td class="tbody5td" style=" height: 80px" > <div class ="linepercentEver" style="width:20px; height: ${(60*(nw300EverInstance[0].NO21))/everNum}px;"></div>    <div class ="lineNumberEver" style="width:20px; height: ${80-((60*(nw300EverInstance[0].NO21))/everNum)}px;"><label class="onum" style="display: none;">21</label>  <label class="evnum"> ${nw300EverInstance[0].NO21} </label>   <label style="display: none;" class="cnum"> ${nw300CountInstance[0].NO21} </label></div></td>
            <td class="tbody5td" style=" height: 80px" > <div class ="linepercentEver" style="width:20px; height: ${(60*(nw300EverInstance[0].NO22))/everNum}px;"></div>    <div class ="lineNumberEver" style="width:20px; height: ${80-((60*(nw300EverInstance[0].NO22))/everNum)}px;"><label class="onum" style="display: none;">22</label>  <label class="evnum"> ${nw300EverInstance[0].NO22} </label>   <label style="display: none;" class="cnum"> ${nw300CountInstance[0].NO22} </label></div></td>
            <td class="tbody5td" style=" height: 80px" > <div class ="linepercentEver" style="width:20px; height: ${(60*(nw300EverInstance[0].NO23))/everNum}px;"></div>    <div class ="lineNumberEver" style="width:20px; height: ${80-((60*(nw300EverInstance[0].NO23))/everNum)}px;"><label class="onum" style="display: none;">23</label>  <label class="evnum"> ${nw300EverInstance[0].NO23} </label>   <label style="display: none;" class="cnum"> ${nw300CountInstance[0].NO23} </label></div></td>
            <td class="tbody5td" style=" height: 80px" > <div class ="linepercentEver" style="width:20px; height: ${(60*(nw300EverInstance[0].NO24))/everNum}px;"></div>    <div class ="lineNumberEver" style="width:20px; height: ${80-((60*(nw300EverInstance[0].NO24))/everNum)}px;"><label class="onum" style="display: none;">24</label>  <label class="evnum"> ${nw300EverInstance[0].NO24} </label>   <label style="display: none;" class="cnum"> ${nw300CountInstance[0].NO24} </label></div></td>
            <td class="tbody5td" style=" height: 80px" > <div class ="linepercentEver" style="width:20px; height: ${(60*(nw300EverInstance[0].NO25))/everNum}px;"></div>    <div class ="lineNumberEver" style="width:20px; height: ${80-((60*(nw300EverInstance[0].NO25))/everNum)}px;"><label class="onum" style="display: none;">25</label>  <label class="evnum"> ${nw300EverInstance[0].NO25} </label>   <label style="display: none;" class="cnum"> ${nw300CountInstance[0].NO25} </label></div></td>
            <td class="tbody5td" style=" height: 80px" > <div class ="linepercentEver" style="width:20px; height: ${(60*(nw300EverInstance[0].NO26))/everNum}px;"></div>    <div class ="lineNumberEver" style="width:20px; height: ${80-((60*(nw300EverInstance[0].NO26))/everNum)}px;"><label class="onum" style="display: none;">26</label>  <label class="evnum"> ${nw300EverInstance[0].NO26} </label>   <label style="display: none;" class="cnum"> ${nw300CountInstance[0].NO26} </label></div></td>
            <td class="tbody5td" style=" height: 80px" > <div class ="linepercentEver" style="width:20px; height: ${(60*(nw300EverInstance[0].NO27))/everNum}px;"></div>    <div class ="lineNumberEver" style="width:20px; height: ${80-((60*(nw300EverInstance[0].NO27))/everNum)}px;"><label class="onum" style="display: none;">27</label>  <label class="evnum"> ${nw300EverInstance[0].NO27} </label>   <label style="display: none;" class="cnum"> ${nw300CountInstance[0].NO27} </label></div></td>
            <td class="tbody5td" style=" height: 80px" > <div class ="linepercentEver" style="width:20px; height: ${(60*(nw300EverInstance[0].NO28))/everNum}px;"></div>    <div class ="lineNumberEver" style="width:20px; height: ${80-((60*(nw300EverInstance[0].NO28))/everNum)}px;"><label class="onum" style="display: none;">28</label>  <label class="evnum"> ${nw300EverInstance[0].NO28} </label>   <label style="display: none;" class="cnum"> ${nw300CountInstance[0].NO28} </label></div></td>
            <td class="tbody5td" style=" height: 80px" > <div class ="linepercentEver" style="width:20px; height: ${(60*(nw300EverInstance[0].NO29))/everNum}px;"></div>    <div class ="lineNumberEver" style="width:20px; height: ${80-((60*(nw300EverInstance[0].NO29))/everNum)}px;"><label class="onum" style="display: none;">29</label>  <label class="evnum"> ${nw300EverInstance[0].NO29} </label>   <label style="display: none;" class="cnum"> ${nw300CountInstance[0].NO29} </label></div></td>
            <td class="tbody5td" style=" height: 80px" > <div class ="linepercentEver" style="width:20px; height: ${(60*(nw300EverInstance[0].NO30))/everNum}px;"></div>    <div class ="lineNumberEver" style="width:20px; height: ${80-((60*(nw300EverInstance[0].NO30))/everNum)}px;"><label class="onum" style="display: none;">30</label>  <label class="evnum"> ${nw300EverInstance[0].NO30} </label>   <label style="display: none;" class="cnum"> ${nw300CountInstance[0].NO30} </label></div></td>
            <td class="tbody5td" style=" height: 80px" > <div class ="linepercentEver" style="width:20px; height: ${(60*(nw300EverInstance[0].NO31))/everNum}px;"></div>    <div class ="lineNumberEver" style="width:20px; height: ${80-((60*(nw300EverInstance[0].NO31))/everNum)}px;"><label class="onum" style="display: none;">31</label>  <label class="evnum"> ${nw300EverInstance[0].NO31} </label>   <label style="display: none;" class="cnum"> ${nw300CountInstance[0].NO31} </label></div></td>
            <td class="tbody5td" style=" height: 80px" > <div class ="linepercentEver" style="width:20px; height: ${(60*(nw300EverInstance[0].NO32))/everNum}px;"></div>    <div class ="lineNumberEver" style="width:20px; height: ${80-((60*(nw300EverInstance[0].NO32))/everNum)}px;"><label class="onum" style="display: none;">32</label>  <label class="evnum"> ${nw300EverInstance[0].NO32} </label>   <label style="display: none;" class="cnum"> ${nw300CountInstance[0].NO32} </label></div></td>
            <td class="tbody5td" style=" height: 80px" > <div class ="linepercentEver" style="width:20px; height: ${(60*(nw300EverInstance[0].NO33))/everNum}px;"></div>    <div class ="lineNumberEver" style="width:20px; height: ${80-((60*(nw300EverInstance[0].NO33))/everNum)}px;"><label class="onum" style="display: none;">33</label>  <label class="evnum"> ${nw300EverInstance[0].NO33} </label>   <label style="display: none;" class="cnum"> ${nw300CountInstance[0].NO33} </label></div></td>
            <td class="tbody5td" style=" height: 80px" > <div class ="linepercentEver" style="width:20px; height: ${(60*(nw300EverInstance[0].NO34))/everNum}px;"></div>    <div class ="lineNumberEver" style="width:20px; height: ${80-((60*(nw300EverInstance[0].NO34))/everNum)}px;"><label class="onum" style="display: none;">34</label>  <label class="evnum"> ${nw300EverInstance[0].NO34} </label>   <label style="display: none;" class="cnum"> ${nw300CountInstance[0].NO34} </label></div></td>
            <td class="tbody5td" style=" height: 80px" > <div class ="linepercentEver" style="width:20px; height: ${(60*(nw300EverInstance[0].NO35))/everNum}px;"></div>    <div class ="lineNumberEver" style="width:20px; height: ${80-((60*(nw300EverInstance[0].NO35))/everNum)}px;"><label class="onum" style="display: none;">35</label>  <label class="evnum"> ${nw300EverInstance[0].NO35} </label>   <label style="display: none;" class="cnum"> ${nw300CountInstance[0].NO35} </label></div></td>
            <td class="tbody5td" style=" height: 80px" > <div class ="linepercentEver" style="width:20px; height: ${(60*(nw300EverInstance[0].NO36))/everNum}px;"></div>    <div class ="lineNumberEver" style="width:20px; height: ${80-((60*(nw300EverInstance[0].NO36))/everNum)}px;"><label class="onum" style="display: none;">36</label>  <label class="evnum"> ${nw300EverInstance[0].NO36} </label>   <label style="display: none;" class="cnum"> ${nw300CountInstance[0].NO36} </label></div></td>
            <td class="tbody5td" style=" height: 80px" > <div class ="linepercentEver" style="width:20px; height: ${(60*(nw300EverInstance[0].NO37))/everNum}px;"></div>    <div class ="lineNumberEver" style="width:20px; height: ${80-((60*(nw300EverInstance[0].NO37))/everNum)}px;"><label class="onum" style="display: none;">37</label>  <label class="evnum"> ${nw300EverInstance[0].NO37} </label>   <label style="display: none;" class="cnum"> ${nw300CountInstance[0].NO37} </label></div></td>
            <td class="tbody5td" style=" height: 80px" > <div class ="linepercentEver" style="width:20px; height: ${(60*(nw300EverInstance[0].NO38))/everNum}px;"></div>    <div class ="lineNumberEver" style="width:20px; height: ${80-((60*(nw300EverInstance[0].NO38))/everNum)}px;"><label class="onum" style="display: none;">38</label>  <label class="evnum"> ${nw300EverInstance[0].NO38} </label>   <label style="display: none;" class="cnum"> ${nw300CountInstance[0].NO38} </label></div></td>
            <td class="tbody5td" style=" height: 80px" > <div class ="linepercentEver" style="width:20px; height: ${(60*(nw300EverInstance[0].NO39))/everNum}px;"></div>    <div class ="lineNumberEver" style="width:20px; height: ${80-((60*(nw300EverInstance[0].NO39))/everNum)}px;"><label class="onum" style="display: none;">39</label>  <label class="evnum"> ${nw300EverInstance[0].NO39} </label>   <label style="display: none;" class="cnum"> ${nw300CountInstance[0].NO39} </label></div></td>
            <td class="tbody5td" style=" height: 80px" > <div class ="linepercentEver" style="width:20px; height: ${(60*(nw300EverInstance[0].NO40))/everNum}px;"></div>    <div class ="lineNumberEver" style="width:20px; height: ${80-((60*(nw300EverInstance[0].NO40))/everNum)}px;"><label class="onum" style="display: none;">40</label>  <label class="evnum"> ${nw300EverInstance[0].NO40} </label>   <label style="display: none;" class="cnum"> ${nw300CountInstance[0].NO40} </label></div></td>
            <td class="tbody5td" style=" height: 80px" > <div class ="linepercentEver" style="width:20px; height: ${(60*(nw300EverInstance[0].NO41))/everNum}px;"></div>    <div class ="lineNumberEver" style="width:20px; height: ${80-((60*(nw300EverInstance[0].NO41))/everNum)}px;"><label class="onum" style="display: none;">41</label>  <label class="evnum"> ${nw300EverInstance[0].NO41} </label>   <label style="display: none;" class="cnum"> ${nw300CountInstance[0].NO41} </label></div></td>
            <td class="tbody5td" style=" height: 80px" > <div class ="linepercentEver" style="width:20px; height: ${(60*(nw300EverInstance[0].NO42))/everNum}px;"></div>    <div class ="lineNumberEver" style="width:20px; height: ${80-((60*(nw300EverInstance[0].NO42))/everNum)}px;"><label class="onum" style="display: none;">42</label>  <label class="evnum"> ${nw300EverInstance[0].NO42} </label>   <label style="display: none;" class="cnum"> ${nw300CountInstance[0].NO42} </label></div></td>
            <td class="tbody5td" style=" height: 80px" > <div class ="linepercentEver" style="width:20px; height: ${(60*(nw300EverInstance[0].NO43))/everNum}px;"></div>    <div class ="lineNumberEver" style="width:20px; height: ${80-((60*(nw300EverInstance[0].NO43))/everNum)}px;"><label class="onum" style="display: none;">43</label>  <label class="evnum"> ${nw300EverInstance[0].NO43} </label>   <label style="display: none;" class="cnum"> ${nw300CountInstance[0].NO43} </label></div></td>
            <td class="tbody5td" style=" height: 80px" > <div class ="linepercentEver" style="width:20px; height: ${(60*(nw300EverInstance[0].NO44))/everNum}px;"></div>    <div class ="lineNumberEver" style="width:20px; height: ${80-((60*(nw300EverInstance[0].NO44))/everNum)}px;"><label class="onum" style="display: none;">44</label>  <label class="evnum"> ${nw300EverInstance[0].NO44} </label>   <label style="display: none;" class="cnum"> ${nw300CountInstance[0].NO44} </label></div></td>
            <td class="tbody5td" style=" height: 80px" > <div class ="linepercentEver" style="width:20px; height: ${(60*(nw300EverInstance[0].NO45))/everNum}px;"></div>    <div class ="lineNumberEver" style="width:20px; height: ${80-((60*(nw300EverInstance[0].NO45))/everNum)}px;"><label class="onum" style="display: none;">45</label>  <label class="evnum"> ${nw300EverInstance[0].NO45} </label>   <label style="display: none;" class="cnum"> ${nw300CountInstance[0].NO45} </label></div></td>
            <td class="tbody5td" style=" height: 80px" > <div class ="linepercentEver" style="width:20px; height: ${(60*(nw300EverInstance[0].NO46))/everNum}px;"></div>    <div class ="lineNumberEver" style="width:20px; height: ${80-((60*(nw300EverInstance[0].NO46))/everNum)}px;"><label class="onum" style="display: none;">46</label>  <label class="evnum"> ${nw300EverInstance[0].NO46} </label>   <label style="display: none;" class="cnum"> ${nw300CountInstance[0].NO46} </label></div></td>
            <td class="tbody5td" style=" height: 80px" > <div class ="linepercentEver" style="width:20px; height: ${(60*(nw300EverInstance[0].NO47))/everNum}px;"></div>    <div class ="lineNumberEver" style="width:20px; height: ${80-((60*(nw300EverInstance[0].NO47))/everNum)}px;"><label class="onum" style="display: none;">47</label>  <label class="evnum"> ${nw300EverInstance[0].NO47} </label>   <label style="display: none;" class="cnum"> ${nw300CountInstance[0].NO47} </label></div></td>
            <td class="tbody5td" style=" height: 80px" > <div class ="linepercentEver" style="width:20px; height: ${(60*(nw300EverInstance[0].NO48))/everNum}px;"></div>    <div class ="lineNumberEver" style="width:20px; height: ${80-((60*(nw300EverInstance[0].NO48))/everNum)}px;"><label class="onum" style="display: none;">48</label>  <label class="evnum"> ${nw300EverInstance[0].NO48} </label>   <label style="display: none;" class="cnum"> ${nw300CountInstance[0].NO48} </label></div></td>
            <td class="tbody5td" style=" height: 80px" > <div class ="linepercentEver" style="width:20px; height: ${(60*(nw300EverInstance[0].NO49))/everNum}px;"></div>    <div class ="lineNumberEver" style="width:20px; height: ${80-((60*(nw300EverInstance[0].NO49))/everNum)}px;"><label class="onum" style="display: none;">49</label>  <label class="evnum"> ${nw300EverInstance[0].NO49} </label>   <label style="display: none;" class="cnum"> ${nw300CountInstance[0].NO49} </label></div></td>
        </tr>
        </tbody>

        </table>
    </div>
</center>

</body>
</html>