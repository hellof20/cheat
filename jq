参考https://stedolan.github.io/jq/manual/#Basicfilters
#列出json文件所有的keys
kubectl get pods --all-namespaces -o json|jq 'keys'

#获取json文件列表中对象的值
kubectl get pods --all-namespaces -o json|jq '.items[].spec.containers[].image'

#获取多个字段
kubectl get pods -o json|jq -r '.items[].spec.containers[] | .name +" "+.image'

#获取数组长度
kubectl get pods -o json|jq -r '.items|length'

-r去掉双引号

# Access first list item
jq '.[0]'

# Slice & Dice
jq '.[2:4]'
jq '.[:3]'
jq '.[-2:]'

# 先对象后list
jq '.records | .[]'
