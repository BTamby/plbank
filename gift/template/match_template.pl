#  Author: Coumes Quentin     Mail: qcoumes@etud.u-pem.fr
#  Created: 2017-06-29
#  Last Modified: 2017-06-29


build==
def build(dic):
    n=1
    question=list()
    answer=list()
    while ('answer'+str(n) in pl_dic):
        answer.append(pl_dic['answer'+str(n)])
        question.append(pl_dic['question'+str(n)])
        n += 1
    dic['answer'] = answer
    dic['question'] = question
    return dic
==


form==
{% block css %}
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.12.2/js/bootstrap-select.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.12.2/css/bootstrap-select.min.css">
{% endblock %}

{% block form %}
    {% for item in question %}
        <span class="input">item:</span>
        <select class="selectpicker" name="item" title="Réponse" required>
            {% for item2 in answer %}
                <option value="{{ item2 }}">{{item2}}</option>
            {% endfor %}
        </select>
    {% endfor %}
{% endblock %}
==

evaluator==
def evaluator(reponse, dic):
    if (reponse == dic['answer']):
        return True, "Bien joué"
    return False, "Mauvais matching"
==
