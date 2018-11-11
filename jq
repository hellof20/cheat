参考https://www.ibm.com/developerworks/cn/linux/1612_chengg_jq/index.html
#列出json文件所有的keys
kubectl get pods --all-namespaces -o json|jq 'keys'

#获取json文件列表中对象的值
kubectl get pods --all-namespaces -o json|jq '.items[].spec.containers[].image'

-r去掉双引号

# Access first list item
jq '.[0]'

# Slice & Dice
jq '.[2:4]'
jq '.[:3]'
jq '.[-2:]'
