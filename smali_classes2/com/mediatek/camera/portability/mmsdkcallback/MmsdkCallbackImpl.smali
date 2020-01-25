.class public Lcom/mediatek/camera/portability/mmsdkcallback/MmsdkCallbackImpl;
.super Ljava/lang/Object;
.source "MmsdkCallbackImpl.java"


# static fields
.field private static final BOKEH_IMAGE:Ljava/lang/String; = "bi"

.field private static final CAMERA_MSG_COMPRESSED_IMAGE:I = 0x100

.field private static final CLEAR_IMAGE:Ljava/lang/String; = "ci"

.field private static final LDC:Ljava/lang/String; = "ldc"

.field private static final MTK_BOKEH_DEPTH:Ljava/lang/String; = "mbd"

.field private static final MTK_BOKEH_META:Ljava/lang/String; = "mbm"

.field private static final MTK_CAMERA_MSG_EXT_DATA_JPS:I = 0x11

.field private static final MTK_CAMERA_MSG_EXT_DATA_STEREO_CLEAR_IMAGE:I = 0x15

.field private static final MTK_CAMERA_MSG_EXT_DATA_STEREO_DBG:I = 0x12

.field private static final MTK_CAMERA_MSG_EXT_DATA_STEREO_DEPTHMAP:I = 0x14

.field private static final MTK_CAMERA_MSG_EXT_DATA_STEREO_DEPTHWRAPPER:I = 0x20

.field private static final MTK_CAMERA_MSG_EXT_DATA_STEREO_LDC:I = 0x16

.field private static final MTK_CAMERA_MSG_EXT_DATA_STEREO_N3D:I = 0x19

.field private static final MTK_DEBUG_BUFFER:Ljava/lang/String; = "mdb"

.field private static final MTK_DEPTH_WRAPPER:Ljava/lang/String; = "mdw"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBaseParameters:Lcom/mediatek/mmsdk/BaseParameters;

.field private mCallbackList:Ljava/lang/String;

.field private mMmsdkCallbackClient:Lcom/mediatek/mmsdk/callback/MmsdkCallbackClient;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CamAp_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/mediatek/camera/portability/mmsdkcallback/MmsdkCallbackImpl;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/camera/portability/mmsdkcallback/MmsdkCallbackImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/mediatek/camera/portability/mmsdkcallback/MmsdkCallbackImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MmsdkCallbackImpl constructor"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/mediatek/mmsdk/callback/MmsdkCallbackClient;

    invoke-direct {v0, p1}, Lcom/mediatek/mmsdk/callback/MmsdkCallbackClient;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mediatek/camera/portability/mmsdkcallback/MmsdkCallbackImpl;->mMmsdkCallbackClient:Lcom/mediatek/mmsdk/callback/MmsdkCallbackClient;

    return-void
.end method

.method private getParameters()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mediatek/mmsdk/BaseParameters;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/mediatek/camera/portability/mmsdkcallback/MmsdkCallbackImpl;->mCallbackList:Ljava/lang/String;

    const-string v2, "ci"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/mediatek/mmsdk/BaseParameters;

    invoke-direct {v1}, Lcom/mediatek/mmsdk/BaseParameters;-><init>()V

    iput-object v1, p0, Lcom/mediatek/camera/portability/mmsdkcallback/MmsdkCallbackImpl;->mBaseParameters:Lcom/mediatek/mmsdk/BaseParameters;

    iget-object v1, p0, Lcom/mediatek/camera/portability/mmsdkcallback/MmsdkCallbackImpl;->mBaseParameters:Lcom/mediatek/mmsdk/BaseParameters;

    const-string v2, "callback-msg-type"

    const/16 v3, 0x15

    invoke-virtual {v1, v2, v3}, Lcom/mediatek/mmsdk/BaseParameters;->set(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/mediatek/camera/portability/mmsdkcallback/MmsdkCallbackImpl;->mBaseParameters:Lcom/mediatek/mmsdk/BaseParameters;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v1, p0, Lcom/mediatek/camera/portability/mmsdkcallback/MmsdkCallbackImpl;->mCallbackList:Ljava/lang/String;

    const-string v2, "bi"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/mediatek/mmsdk/BaseParameters;

    invoke-direct {v1}, Lcom/mediatek/mmsdk/BaseParameters;-><init>()V

    iput-object v1, p0, Lcom/mediatek/camera/portability/mmsdkcallback/MmsdkCallbackImpl;->mBaseParameters:Lcom/mediatek/mmsdk/BaseParameters;

    iget-object v1, p0, Lcom/mediatek/camera/portability/mmsdkcallback/MmsdkCallbackImpl;->mBaseParameters:Lcom/mediatek/mmsdk/BaseParameters;

    const-string v2, "callback-msg-type"

    const/16 v3, 0x100

    invoke-virtual {v1, v2, v3}, Lcom/mediatek/mmsdk/BaseParameters;->set(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/mediatek/camera/portability/mmsdkcallback/MmsdkCallbackImpl;->mBaseParameters:Lcom/mediatek/mmsdk/BaseParameters;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v1, p0, Lcom/mediatek/camera/portability/mmsdkcallback/MmsdkCallbackImpl;->mCallbackList:Ljava/lang/String;

    const-string v2, "mbd"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Lcom/mediatek/mmsdk/BaseParameters;

    invoke-direct {v1}, Lcom/mediatek/mmsdk/BaseParameters;-><init>()V

    iput-object v1, p0, Lcom/mediatek/camera/portability/mmsdkcallback/MmsdkCallbackImpl;->mBaseParameters:Lcom/mediatek/mmsdk/BaseParameters;

    iget-object v1, p0, Lcom/mediatek/camera/portability/mmsdkcallback/MmsdkCallbackImpl;->mBaseParameters:Lcom/mediatek/mmsdk/BaseParameters;

    const-string v2, "callback-msg-type"

    const/16 v3, 0x14

    invoke-virtual {v1, v2, v3}, Lcom/mediatek/mmsdk/BaseParameters;->set(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/mediatek/camera/portability/mmsdkcallback/MmsdkCallbackImpl;->mBaseParameters:Lcom/mediatek/mmsdk/BaseParameters;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v1, p0, Lcom/mediatek/camera/portability/mmsdkcallback/MmsdkCallbackImpl;->mCallbackList:Ljava/lang/String;

    const-string v2, "mdb"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Lcom/mediatek/mmsdk/BaseParameters;

    invoke-direct {v1}, Lcom/mediatek/mmsdk/BaseParameters;-><init>()V

    iput-object v1, p0, Lcom/mediatek/camera/portability/mmsdkcallback/MmsdkCallbackImpl;->mBaseParameters:Lcom/mediatek/mmsdk/BaseParameters;

    iget-object v1, p0, Lcom/mediatek/camera/portability/mmsdkcallback/MmsdkCallbackImpl;->mBaseParameters:Lcom/mediatek/mmsdk/BaseParameters;

    const-string v2, "callback-msg-type"

    const/16 v3, 0x19

    invoke-virtual {v1, v2, v3}, Lcom/mediatek/mmsdk/BaseParameters;->set(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/mediatek/camera/portability/mmsdkcallback/MmsdkCallbackImpl;->mBaseParameters:Lcom/mediatek/mmsdk/BaseParameters;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-object v1, p0, Lcom/mediatek/camera/portability/mmsdkcallback/MmsdkCallbackImpl;->mCallbackList:Ljava/lang/String;

    const-string v2, "mbm"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, Lcom/mediatek/mmsdk/BaseParameters;

    invoke-direct {v1}, Lcom/mediatek/mmsdk/BaseParameters;-><init>()V

    iput-object v1, p0, Lcom/mediatek/camera/portability/mmsdkcallback/MmsdkCallbackImpl;->mBaseParameters:Lcom/mediatek/mmsdk/BaseParameters;

    iget-object v1, p0, Lcom/mediatek/camera/portability/mmsdkcallback/MmsdkCallbackImpl;->mBaseParameters:Lcom/mediatek/mmsdk/BaseParameters;

    const-string v2, "callback-msg-type"

    const/16 v3, 0x12

    invoke-virtual {v1, v2, v3}, Lcom/mediatek/mmsdk/BaseParameters;->set(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/mediatek/camera/portability/mmsdkcallback/MmsdkCallbackImpl;->mBaseParameters:Lcom/mediatek/mmsdk/BaseParameters;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    iget-object v1, p0, Lcom/mediatek/camera/portability/mmsdkcallback/MmsdkCallbackImpl;->mCallbackList:Ljava/lang/String;

    const-string v2, "mdw"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance v1, Lcom/mediatek/mmsdk/BaseParameters;

    invoke-direct {v1}, Lcom/mediatek/mmsdk/BaseParameters;-><init>()V

    iput-object v1, p0, Lcom/mediatek/camera/portability/mmsdkcallback/MmsdkCallbackImpl;->mBaseParameters:Lcom/mediatek/mmsdk/BaseParameters;

    iget-object v1, p0, Lcom/mediatek/camera/portability/mmsdkcallback/MmsdkCallbackImpl;->mBaseParameters:Lcom/mediatek/mmsdk/BaseParameters;

    const-string v2, "callback-msg-type"

    const/16 v3, 0x20

    invoke-virtual {v1, v2, v3}, Lcom/mediatek/mmsdk/BaseParameters;->set(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/mediatek/camera/portability/mmsdkcallback/MmsdkCallbackImpl;->mBaseParameters:Lcom/mediatek/mmsdk/BaseParameters;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    iget-object v1, p0, Lcom/mediatek/camera/portability/mmsdkcallback/MmsdkCallbackImpl;->mCallbackList:Ljava/lang/String;

    const-string v2, "ldc"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    new-instance v1, Lcom/mediatek/mmsdk/BaseParameters;

    invoke-direct {v1}, Lcom/mediatek/mmsdk/BaseParameters;-><init>()V

    iput-object v1, p0, Lcom/mediatek/camera/portability/mmsdkcallback/MmsdkCallbackImpl;->mBaseParameters:Lcom/mediatek/mmsdk/BaseParameters;

    iget-object v1, p0, Lcom/mediatek/camera/portability/mmsdkcallback/MmsdkCallbackImpl;->mBaseParameters:Lcom/mediatek/mmsdk/BaseParameters;

    const-string v2, "callback-msg-type"

    const/16 v3, 0x16

    invoke-virtual {v1, v2, v3}, Lcom/mediatek/mmsdk/BaseParameters;->set(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/mediatek/camera/portability/mmsdkcallback/MmsdkCallbackImpl;->mBaseParameters:Lcom/mediatek/mmsdk/BaseParameters;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    return-object v0
.end method


# virtual methods
.method public configSurfaces(Ljava/util/List;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/Surface;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    :try_start_0
    iput-object p2, p0, Lcom/mediatek/camera/portability/mmsdkcallback/MmsdkCallbackImpl;->mCallbackList:Ljava/lang/String;

    iget-object p2, p0, Lcom/mediatek/camera/portability/mmsdkcallback/MmsdkCallbackImpl;->mMmsdkCallbackClient:Lcom/mediatek/mmsdk/callback/MmsdkCallbackClient;

    invoke-direct {p0}, Lcom/mediatek/camera/portability/mmsdkcallback/MmsdkCallbackImpl;->getParameters()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lcom/mediatek/mmsdk/callback/MmsdkCallbackClient;->setOutputSurfaces(Ljava/util/List;Ljava/util/List;)V
    :try_end_0
    .catch Lcom/mediatek/mmsdk/CameraEffectHalException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object p2, Lcom/mediatek/camera/portability/mmsdkcallback/MmsdkCallbackImpl;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "config surface exception :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public isMmsdkCallbackSupported()Z
    .locals 1

    iget-object v0, p0, Lcom/mediatek/camera/portability/mmsdkcallback/MmsdkCallbackImpl;->mMmsdkCallbackClient:Lcom/mediatek/mmsdk/callback/MmsdkCallbackClient;

    invoke-virtual {v0}, Lcom/mediatek/mmsdk/callback/MmsdkCallbackClient;->isCallbackClientSupported()Z

    move-result v0

    return v0
.end method

.method public start()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/mediatek/camera/portability/mmsdkcallback/MmsdkCallbackImpl;->mMmsdkCallbackClient:Lcom/mediatek/mmsdk/callback/MmsdkCallbackClient;

    invoke-virtual {v0}, Lcom/mediatek/mmsdk/callback/MmsdkCallbackClient;->start()V
    :try_end_0
    .catch Lcom/mediatek/mmsdk/CameraEffectHalException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/mediatek/camera/portability/mmsdkcallback/MmsdkCallbackImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "start exception :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public stop()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/mediatek/camera/portability/mmsdkcallback/MmsdkCallbackImpl;->mMmsdkCallbackClient:Lcom/mediatek/mmsdk/callback/MmsdkCallbackClient;

    invoke-virtual {v0}, Lcom/mediatek/mmsdk/callback/MmsdkCallbackClient;->stop()V
    :try_end_0
    .catch Lcom/mediatek/mmsdk/CameraEffectHalException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/mediatek/camera/portability/mmsdkcallback/MmsdkCallbackImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stop exception :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
