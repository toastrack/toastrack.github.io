---
layout: page
title: Committee
---

{% for person in site.data.committee %}
##{{ person.name }}
{{ person.position }}  \\
![{{ person.name }} Profile Picture][{{ person.position | downcase }}]
{% endfor %}


{% for person in site.data.committee %}
[{{ person.position | downcase }}]: /img/profile/{{person.photo}}
{% endfor %}
