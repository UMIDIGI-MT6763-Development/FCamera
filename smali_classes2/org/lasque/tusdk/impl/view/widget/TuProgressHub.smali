.class public Lorg/lasque/tusdk/impl/view/widget/TuProgressHub;
.super Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHub;


# static fields
.field public static final ins:Lorg/lasque/tusdk/impl/view/widget/TuProgressHub;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/lasque/tusdk/impl/view/widget/TuProgressHub;

    invoke-direct {v0}, Lorg/lasque/tusdk/impl/view/widget/TuProgressHub;-><init>()V

    sput-object v0, Lorg/lasque/tusdk/impl/view/widget/TuProgressHub;->ins:Lorg/lasque/tusdk/impl/view/widget/TuProgressHub;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHub;-><init>()V

    return-void
.end method

.method public static dismiss()V
    .locals 2

    sget-object v0, Lorg/lasque/tusdk/impl/view/widget/TuProgressHub;->ins:Lorg/lasque/tusdk/impl/view/widget/TuProgressHub;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/impl/view/widget/TuProgressHub;->dismissHub(Z)V

    return-void
.end method

.method public static dismissRightNow()V
    .locals 2

    sget-object v0, Lorg/lasque/tusdk/impl/view/widget/TuProgressHub;->ins:Lorg/lasque/tusdk/impl/view/widget/TuProgressHub;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/impl/view/widget/TuProgressHub;->dismissHub(Z)V

    return-void
.end method

.method public static isVisible()Z
    .locals 1

    sget-object v0, Lorg/lasque/tusdk/impl/view/widget/TuProgressHub;->ins:Lorg/lasque/tusdk/impl/view/widget/TuProgressHub;

    invoke-virtual {v0}, Lorg/lasque/tusdk/impl/view/widget/TuProgressHub;->existHubView()Z

    move-result v0

    return v0
.end method

.method public static setStatus(Landroid/content/Context;I)V
    .locals 8

    sget-object v0, Lorg/lasque/tusdk/impl/view/widget/TuProgressHub;->ins:Lorg/lasque/tusdk/impl/view/widget/TuProgressHub;

    sget-object v2, Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView$TuSdkHubViewShowType;->TypeDefault:Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView$TuSdkHubViewShowType;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object v1, p0

    move v4, p1

    invoke-virtual/range {v0 .. v7}, Lorg/lasque/tusdk/impl/view/widget/TuProgressHub;->showHubView(Landroid/content/Context;Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView$TuSdkHubViewShowType;Ljava/lang/String;IIJ)V

    return-void
.end method

.method public static setStatus(Landroid/content/Context;Ljava/lang/String;)V
    .locals 8

    sget-object v0, Lorg/lasque/tusdk/impl/view/widget/TuProgressHub;->ins:Lorg/lasque/tusdk/impl/view/widget/TuProgressHub;

    sget-object v2, Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView$TuSdkHubViewShowType;->TypeDefault:Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView$TuSdkHubViewShowType;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object v1, p0

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lorg/lasque/tusdk/impl/view/widget/TuProgressHub;->showHubView(Landroid/content/Context;Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView$TuSdkHubViewShowType;Ljava/lang/String;IIJ)V

    return-void
.end method

.method public static showError(Landroid/content/Context;I)V
    .locals 8

    sget-object v0, Lorg/lasque/tusdk/impl/view/widget/TuProgressHub;->ins:Lorg/lasque/tusdk/impl/view/widget/TuProgressHub;

    sget-object v2, Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView$TuSdkHubViewShowType;->TypeFailed:Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView$TuSdkHubViewShowType;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x3e8

    move-object v1, p0

    move v4, p1

    invoke-virtual/range {v0 .. v7}, Lorg/lasque/tusdk/impl/view/widget/TuProgressHub;->showHubView(Landroid/content/Context;Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView$TuSdkHubViewShowType;Ljava/lang/String;IIJ)V

    return-void
.end method

.method public static showError(Landroid/content/Context;Ljava/lang/String;)V
    .locals 8

    sget-object v0, Lorg/lasque/tusdk/impl/view/widget/TuProgressHub;->ins:Lorg/lasque/tusdk/impl/view/widget/TuProgressHub;

    sget-object v2, Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView$TuSdkHubViewShowType;->TypeFailed:Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView$TuSdkHubViewShowType;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x3e8

    move-object v1, p0

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lorg/lasque/tusdk/impl/view/widget/TuProgressHub;->showHubView(Landroid/content/Context;Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView$TuSdkHubViewShowType;Ljava/lang/String;IIJ)V

    return-void
.end method

.method public static showImage(Landroid/content/Context;II)V
    .locals 8

    sget-object v0, Lorg/lasque/tusdk/impl/view/widget/TuProgressHub;->ins:Lorg/lasque/tusdk/impl/view/widget/TuProgressHub;

    sget-object v2, Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView$TuSdkHubViewShowType;->TypeImage:Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView$TuSdkHubViewShowType;

    const/4 v3, 0x0

    const-wide/16 v6, 0x0

    move-object v1, p0

    move v4, p2

    move v5, p1

    invoke-virtual/range {v0 .. v7}, Lorg/lasque/tusdk/impl/view/widget/TuProgressHub;->showHubView(Landroid/content/Context;Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView$TuSdkHubViewShowType;Ljava/lang/String;IIJ)V

    return-void
.end method

.method public static showImage(Landroid/content/Context;ILjava/lang/String;)V
    .locals 8

    sget-object v0, Lorg/lasque/tusdk/impl/view/widget/TuProgressHub;->ins:Lorg/lasque/tusdk/impl/view/widget/TuProgressHub;

    sget-object v2, Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView$TuSdkHubViewShowType;->TypeImage:Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView$TuSdkHubViewShowType;

    const/4 v4, 0x0

    const-wide/16 v6, 0x0

    move-object v1, p0

    move-object v3, p2

    move v5, p1

    invoke-virtual/range {v0 .. v7}, Lorg/lasque/tusdk/impl/view/widget/TuProgressHub;->showHubView(Landroid/content/Context;Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView$TuSdkHubViewShowType;Ljava/lang/String;IIJ)V

    return-void
.end method

.method public static showSuccess(Landroid/content/Context;I)V
    .locals 8

    sget-object v0, Lorg/lasque/tusdk/impl/view/widget/TuProgressHub;->ins:Lorg/lasque/tusdk/impl/view/widget/TuProgressHub;

    sget-object v2, Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView$TuSdkHubViewShowType;->TypeSucceed:Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView$TuSdkHubViewShowType;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x3e8

    move-object v1, p0

    move v4, p1

    invoke-virtual/range {v0 .. v7}, Lorg/lasque/tusdk/impl/view/widget/TuProgressHub;->showHubView(Landroid/content/Context;Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView$TuSdkHubViewShowType;Ljava/lang/String;IIJ)V

    return-void
.end method

.method public static showSuccess(Landroid/content/Context;Ljava/lang/String;)V
    .locals 8

    sget-object v0, Lorg/lasque/tusdk/impl/view/widget/TuProgressHub;->ins:Lorg/lasque/tusdk/impl/view/widget/TuProgressHub;

    sget-object v2, Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView$TuSdkHubViewShowType;->TypeSucceed:Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView$TuSdkHubViewShowType;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x3e8

    move-object v1, p0

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lorg/lasque/tusdk/impl/view/widget/TuProgressHub;->showHubView(Landroid/content/Context;Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView$TuSdkHubViewShowType;Ljava/lang/String;IIJ)V

    return-void
.end method

.method public static showToast(Landroid/content/Context;I)V
    .locals 8

    sget-object v0, Lorg/lasque/tusdk/impl/view/widget/TuProgressHub;->ins:Lorg/lasque/tusdk/impl/view/widget/TuProgressHub;

    sget-object v2, Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView$TuSdkHubViewShowType;->TypeImage:Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView$TuSdkHubViewShowType;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x3e8

    move-object v1, p0

    move v4, p1

    invoke-virtual/range {v0 .. v7}, Lorg/lasque/tusdk/impl/view/widget/TuProgressHub;->showHubView(Landroid/content/Context;Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView$TuSdkHubViewShowType;Ljava/lang/String;IIJ)V

    return-void
.end method

.method public static showToast(Landroid/content/Context;Ljava/lang/String;)V
    .locals 8

    sget-object v0, Lorg/lasque/tusdk/impl/view/widget/TuProgressHub;->ins:Lorg/lasque/tusdk/impl/view/widget/TuProgressHub;

    sget-object v2, Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView$TuSdkHubViewShowType;->TypeImage:Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView$TuSdkHubViewShowType;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x3e8

    move-object v1, p0

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lorg/lasque/tusdk/impl/view/widget/TuProgressHub;->showHubView(Landroid/content/Context;Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView$TuSdkHubViewShowType;Ljava/lang/String;IIJ)V

    return-void
.end method


# virtual methods
.method public getHubLayoutId()I
    .locals 1

    invoke-static {}, Lorg/lasque/tusdk/impl/view/widget/TuProgressHubView;->getLayoutId()I

    move-result v0

    return v0
.end method
