.class public abstract Lorg/lasque/tusdk/modules/components/filter/TuEditHDRFragmentBase;
.super Lorg/lasque/tusdk/impl/activity/TuFilterResultFragment;


# instance fields
.field private a:Ljava/nio/ByteBuffer;

.field private b:Lorg/lasque/tusdk/core/seles/tusdk/FilterOption$RunTimeTextureDelegate;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/lasque/tusdk/impl/activity/TuFilterResultFragment;-><init>()V

    new-instance v0, Lorg/lasque/tusdk/modules/components/filter/TuEditHDRFragmentBase$2;

    invoke-direct {v0, p0}, Lorg/lasque/tusdk/modules/components/filter/TuEditHDRFragmentBase$2;-><init>(Lorg/lasque/tusdk/modules/components/filter/TuEditHDRFragmentBase;)V

    iput-object v0, p0, Lorg/lasque/tusdk/modules/components/filter/TuEditHDRFragmentBase;->b:Lorg/lasque/tusdk/core/seles/tusdk/FilterOption$RunTimeTextureDelegate;

    return-void
.end method

.method static synthetic a(Lorg/lasque/tusdk/modules/components/filter/TuEditHDRFragmentBase;)Ljava/nio/ByteBuffer;
    .locals 0

    iget-object p0, p0, Lorg/lasque/tusdk/modules/components/filter/TuEditHDRFragmentBase;->a:Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method private a()Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;
    .locals 3

    new-instance v0, Lorg/lasque/tusdk/modules/components/filter/TuEditHDRFragmentBase$1;

    iget-object v1, p0, Lorg/lasque/tusdk/modules/components/filter/TuEditHDRFragmentBase;->b:Lorg/lasque/tusdk/core/seles/tusdk/FilterOption$RunTimeTextureDelegate;

    invoke-direct {v0, p0, v1}, Lorg/lasque/tusdk/modules/components/filter/TuEditHDRFragmentBase$1;-><init>(Lorg/lasque/tusdk/modules/components/filter/TuEditHDRFragmentBase;Lorg/lasque/tusdk/core/seles/tusdk/FilterOption$RunTimeTextureDelegate;)V

    const-wide v1, 0x7fffffffffffffffL

    iput-wide v1, v0, Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;->id:J

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;->canDefinition:Z

    iput-boolean v1, v0, Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;->isInternal:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "d78aa55b64bb63f97bc5feb3c6ba5600"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object v1, v0, Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;->internalTextures:Ljava/util/ArrayList;

    invoke-static {v0}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->creat(Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;)Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected loadView(Landroid/view/ViewGroup;)V
    .locals 2

    invoke-super {p0, p1}, Lorg/lasque/tusdk/impl/activity/TuFilterResultFragment;->loadView(Landroid/view/ViewGroup;)V

    sget-wide v0, Lorg/lasque/tusdk/modules/components/ComponentActType;->editHDRFragment:J

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/secret/StatisticsManger;->appendComponent(J)V

    invoke-static {}, Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage;->shared()Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage;->getFilterWrap(Ljava/lang/String;)Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/modules/components/filter/TuEditHDRFragmentBase;->setFilterWrap(Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;)V

    return-void
.end method

.method protected postProcessWithImage(Landroid/graphics/Bitmap;)V
    .locals 1

    invoke-direct {p0}, Lorg/lasque/tusdk/modules/components/filter/TuEditHDRFragmentBase;->a()Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/modules/components/filter/TuEditHDRFragmentBase;->setImageViewFilter(Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/filter/TuEditHDRFragmentBase;->refreshConfigView()V

    invoke-super {p0, p1}, Lorg/lasque/tusdk/impl/activity/TuFilterResultFragment;->postProcessWithImage(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected preProcessWithImage(Landroid/graphics/Bitmap;)Z
    .locals 2

    sget-object v0, Lorg/lasque/tusdk/core/secret/SdkValid;->shared:Lorg/lasque/tusdk/core/secret/SdkValid;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/secret/SdkValid;->hdrFilterEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "You are not allowed to use the HDR feature, please see http://tusdk.com"

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p1, v1}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return v0

    :cond_0
    invoke-static {p1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorHDRFilter;->getClipHistBuffer(Landroid/graphics/Bitmap;)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lorg/lasque/tusdk/modules/components/filter/TuEditHDRFragmentBase;->a:Ljava/nio/ByteBuffer;

    const/4 p1, 0x1

    return p1
.end method
