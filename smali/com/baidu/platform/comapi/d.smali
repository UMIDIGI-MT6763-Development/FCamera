.class public Lcom/baidu/platform/comapi/d;
.super Landroid/content/BroadcastReceiver;


# static fields
.field public static final a:Ljava/lang/String; = "d"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 1

    invoke-static {p1}, Lcom/baidu/platform/comapi/util/c;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/baidu/platform/comapi/util/f;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/baidu/platform/comapi/util/f;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/baidu/platform/comapi/d;->a(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/baidu/platform/comapi/util/c;->a(Landroid/content/Context;)V

    return-void
.end method
