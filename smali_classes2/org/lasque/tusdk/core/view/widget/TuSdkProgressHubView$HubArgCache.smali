.class public Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView$HubArgCache;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HubArgCache"
.end annotation


# instance fields
.field public context:Landroid/content/Context;

.field public delay:J

.field public imageResId:I

.field public showType:Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView$TuSdkHubViewShowType;

.field public text:Ljava/lang/String;

.field public textResId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView$TuSdkHubViewShowType;Ljava/lang/String;IIJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView$HubArgCache;->context:Landroid/content/Context;

    iput-object p2, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView$HubArgCache;->showType:Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView$TuSdkHubViewShowType;

    iput-object p3, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView$HubArgCache;->text:Ljava/lang/String;

    iput p5, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView$HubArgCache;->imageResId:I

    iput p4, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView$HubArgCache;->textResId:I

    iput-wide p6, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView$HubArgCache;->delay:J

    return-void
.end method
