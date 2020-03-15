---
layout: default
---

# [Koronavirus na Boskovicku](/) / Restaurace

Restaurace, které nabízí výdej přes okénko nebo rozvoz:

<table>
    <thead>
        <tr>
            <td>Název</td>
            <td>Telefon</td>
            <td>Popis</td>
        </tr>
    </thead>
    <tbody>
    {% for item in site.data.restaurace %}
    <tr>
        <td>{{item["název"]}}</td>
        <td>{{item["telefon"]}}</td>
        <td>{{item["popis"]}}</td>
    </tr>
    {% endfor %}
    </tbody>
</table>
