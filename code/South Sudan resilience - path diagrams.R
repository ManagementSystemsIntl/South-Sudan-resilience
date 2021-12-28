library(DiagrammeR)

grViz("
      digraph{
      
      graph[layout=dot]
      
      node[shape=box, color='khaki1', style='filled',fontsize=16]
      A[label='CAPI rating score data']
      B[label='CAPI CITIES scores']
      C[label='Municipality background and contextual indicators']

      node[shape=box, color='cadetblue1',style='filled', fontsize=16]
      F[label='MICA.item.long.rater.wide - Services']
      G[label='MICA.item.long.rater.wide - GESI']
      H[label='MICA.full.tidy - Services']
      I[label='MICA.full.tidy - GESI']
      J[label='MICA scores']

      node[shape=box, color='lightpink1', style='filled', fontsize=16]
      O[label='IRR Services']
      P[label='IRR GESI']
      Q[label='IRR Services - exploration and viz']
      R[label='IRR GESI - exploration and viz']
      S[label='Balance.overall.allspecs']
      T[label='Balance by item.allmuni.finalscore']
      U[label='Balance by item.15-23.finalscore']
      V[label='Balance by item.15-15.alternate']


      
      edge[penwidth=1.5]
      A -> F [label='Cleaning script', fontcolor=IndianRed, fontsize=18, color=IndianRed, penwidth=3]
      {B C} -> J
      A-> G
      A-> H
      A-> I
      F -> O
      G -> P
      H -> Q
      I -> R
      J -> {S T U V}

      }
      ")





grViz("
      digraph{
      
      graph[layout=dot]
      
      node[shape=box, color='khaki1', style='filled',fontsize=16]
      A[label='CAPI rating score data']
      B[label='CAPI CITIES scores']
      C[label='Municipality background and contextual indicators']

      node[shape=box, color='cadetblue1',style='filled', fontsize=16]
      F[label='MICA.item.long.rater.wide - Services']
      G[label='MICA.item.long.rater.wide - GESI']
      H[label='MICA.full.tidy - Services']
      I[label='MICA.full.tidy - GESI']
      J[label='MICA scores']

      node[shape=box, color='lightpink1', style='filled', fontsize=16]
      O[label='IRR Services']
      P[label='IRR GESI']
      Q[label='IRR Services - exploration and viz']
      R[label='IRR GESI - exploration and viz']
      S[label='Balance.overall.allspecs']
      T[label='Balance by item.allmuni.finalscore']
      U[label='Balance by item.15-23.finalscore']
      V[label='Balance by item.15-15.alternate']


      
      edge[penwidth=1.5]
      A -> F [label='Cleaning script', fontcolor=IndianRed, fontsize=18, color=IndianRed, penwidth=3]
      {B C} -> J
      A-> G
      A-> H
      A-> I
      F -> O
      G -> P
      H -> Q
      I -> R
      J -> {S T U V}

      }
      ")
