[#ftl]
<!DOCTYPE html>
<html lang="cs">
<head>
    [#include '/_common/head.ftlh']
</head>
<body>

<div class="container">
    [#include '/_common/header.ftlh']

    <div class="card" style="width: 18rem;">
        [#if ucastnikDetail.profilovyObrazek?exists]
            <img src=${ucastnikDetail.profilovyObrazek} class="card-img-top" alt="profilová fotka">
        [/#if]
        <div class="card-body">
            <h5 class="card-title">${ucastnikDetail.jmeno} ${ucastnikDetail.prijmeni}</h5>
            <p class="card-text">Bydliště:
                [#if ucastnikDetail.bydliste?exists]
                    ${ucastnikDetail.bydliste}
                [/#if]
            </p>
        </div>
    </div>
</div>
</body>
</html>
