public class MP2
{
	public static void main(String [] args)
	{
		int a[]={7,6,5,4,3};
		int n=5;
		int b=-1;
		int i;
		int sum=0;
		int s=0;
		for(i=0;i<n-1;i++)
		{
			if(a[i]<a[i+1])
				b=a[i];
			if((a[i]<a[i+1]) && (b!=-1))
				{
				s=a[i+1];
				sum=sum+(s-b);
				b=-1;
				}
		}
		if(sum==-1)
		sum=0;
		System.out.println("profit is" + sum);

	}
}