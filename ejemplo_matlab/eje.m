CxC = [1 2 1/3 1/3 1/4; 1/2 1 1/4 1/3 1/5; 3 4 1 2 1/2 ;3 3 1/2 1 1/2; 4 5 2 2 1];

Cost = [1 17/4 17/9; 4/17 1 4/9; 9/17 9/4 1];
Ease = [1 1/2 3; 2 1 3; 1/3 1/3 1];
FinB = [1 86/67 86/35; 67/86 1 67/35; 35/86 35/67 1];
ResIm = [1 1 2; 1 1 2; 1/2 1/2 1];
StraVal = [1 1/3 2; 3 1 5; 1/2 1/5 1];

[V,D] = eig(CxC)
EigV_CxC = V(:,1)
EigV_CxC_W = EigV_CxC / sum(EigV_CxC)
CR_CxC = ((D(1,1) - 5)/4)/1.1086

[V,D] = eig(Cost)
EigV_Cost = V(:,1)
EigV_Cost_W = EigV_Cost / sum(EigV_Cost)
CR_Cost = ((D(1,1) - 3)/2)/0.5247

[V,D] = eig(Ease)
EigV_Ease = V(:,1)
EigV_Ease_W = EigV_Ease / sum(EigV_Ease)
CR_Ease = ((D(1,1) - 3)/2)/0.5247

[V,D] = eig(FinB)
EigV_FinB = V(:,2)
EigV_FinB_W = EigV_FinB / sum(EigV_FinB)
CR_FinB = ((D(2,2) - 3)/2)/0.5247

[V,D] = eig(ResIm)
EigV_ResIm = V(:,2)
EigV_ResIm_W = EigV_ResIm / sum(EigV_ResIm)
CR_ResIm = ((D(2,2) - 3)/2)/0.5247

[V,D] = eig(StraVal)
EigV_StraVal = V(:,1)
EigV_StraVal_W = EigV_StraVal / sum(EigV_StraVal)
CR_StraVal = ((D(1,1) - 3)/2)/0.5247

M = [EigV_Cost_W EigV_Ease_W EigV_FinB_W EigV_ResIm_W EigV_StraVal_W]

Res = M * EigV_CxC_W