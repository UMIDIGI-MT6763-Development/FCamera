.class Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHub$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHub;->showHubView(Landroid/content/Context;Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView$TuSdkHubViewShowType;Ljava/lang/String;IIJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView$HubArgCache;

.field final synthetic b:Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHub;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHub;Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView$HubArgCache;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHub$1;->b:Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHub;

    iput-object p2, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHub$1;->a:Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView$HubArgCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHub$1;->b:Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHub;

    iget-object v1, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHub$1;->a:Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView$HubArgCache;

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHub;->a(Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHub;Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView$HubArgCache;)V

    return-void
.end method
