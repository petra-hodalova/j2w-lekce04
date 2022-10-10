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
        [#if lektorDetail.profilovyObrazek?exists]
            <img src=${lektorDetail.profilovyObrazek} class="card-img-top" alt="profilová fotka">
        [/#if]
        <div class="card-body">
            <h5 class="card-title">${lektorDetail.jmeno} ${lektorDetail.prijmeni}</h5>
            <p class="card-text">${lektorDetail.role}</p>
        </div>
    </div>
</div>
</body>
</html>
