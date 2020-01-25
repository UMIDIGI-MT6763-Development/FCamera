.class Lcom/baidu/location/e/s;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/location/Location;

.field final synthetic b:Lcom/baidu/location/e/h;


# direct methods
.method constructor <init>(Lcom/baidu/location/e/h;Landroid/location/Location;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/e/s;->b:Lcom/baidu/location/e/h;

    iput-object p2, p0, Lcom/baidu/location/e/s;->a:Landroid/location/Location;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/baidu/location/e/s;->b:Lcom/baidu/location/e/h;

    iget-object v1, p0, Lcom/baidu/location/e/s;->a:Landroid/location/Location;

    invoke-static {v0, v1}, Lcom/baidu/location/e/h;->if(Lcom/baidu/location/e/h;Landroid/location/Location;)V

    return-void
.end method
