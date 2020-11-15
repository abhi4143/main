#include<stdio.h>

int main()
{
    int st[10],bt[10],wt[10],tat[10],n,tq=6,tim[30],no[30],at[10];
    int i,count=0,swt=0,stat=0,temp,sq=0,cnt=0;
    float awt=0.0, atat=0.0;
    
    scanf("%d",&n);
    for(i=0;i<n;i++)
    {
        scanf("%d",&at[i]);
        
    }
    for(i=0;i<n;i++)
    {
        scanf("%d",&bt[i]);
        st[i]=bt[i];
    }
    tim[0]=0;
    while(1)
    {
        for(i=0,count=0;i<n;i++)
        {
            temp=tq;
            if(st[i]==0)
            {
                count++;
                continue;
            }
            if(st[i]>tq)
                st[i]=st[i]-tq;
            else
                if(st[i]>=0)
                {
                    temp=st[i];
                    st[i]=0;
                }
            sq=sq+temp;
            tat[i]=sq;
            no[cnt]=i;
            tim[cnt+1]=sq;
            cnt++;
        }
        if(n==count)
            break;
    }
    for(i=0;i<n;i++)
    {
        wt[i]=tat[i]-bt[i]-at[i];
        swt=swt+wt[i];
        stat=stat+tat[i];
    }
    awt=(float)swt/n;
    printf("%f", awt);
    
}