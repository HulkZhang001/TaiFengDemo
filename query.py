# encoding=utf-8

"""

@author: HulkZhang

@contact: 530670864@qq.com


"""

from SPARQLWrapper import SPARQLWrapper, JSON

sparql = SPARQLWrapper("http://localhost:2020/sparql")
#查询台风山竹有哪些微博舆情文本
sparql.setQuery("""
    PREFIX : <http://www.taifengkg.com#>
    PREFIX rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#>

    SELECT ?n WHERE {
  ?s rdf:type :Taifeng.
  ?s :ChName '山竹'.
  ?s :hasYq ?o.
  ?o :wbText ?n
}
""")
sparql.setReturnFormat(JSON)
results = sparql.query().convert()

for result in results["results"]["bindings"]:
    print(result["n"]["value"])