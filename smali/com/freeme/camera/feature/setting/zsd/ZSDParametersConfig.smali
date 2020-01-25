.class public Lcom/freeme/camera/feature/setting/zsd/ZSDParametersConfig;
.super Ljava/lang/Object;
.source "ZSDParametersConfig.java"

# interfaces
.implements Lcom/freeme/camera/common/setting/ICameraSetting$IParametersConfigure;


# static fields
.field private static final CAMERA_MODE_MTK_PRV:I = 0x1

.field private static final KEY_ZSD_MODE:Ljava/lang/String; = "zsd-mode"

.field private static final KEY_ZSD_SUPPORTED_MODE:Ljava/lang/String; = "zsd-mode-values"

.field private static final TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

.field private static final VALUE_ON:Ljava/lang/String; = "on"


# instance fields
.field private mDeviceRequester:Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;

.field private mValue:Ljava/lang/String;

.field private mZsd:Lcom/freeme/camera/feature/setting/zsd/ZSD;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-class v1, Lcom/freeme/camera/feature/setting/zsd/ZSDParametersConfig;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/feature/setting/zsd/ZSDParametersConfig;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/freeme/camera/feature/setting/zsd/ZSD;Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/zsd/ZSDParametersConfig;->mZsd:Lcom/freeme/camera/feature/setting/zsd/ZSD;

    iput-object p2, p0, Lcom/freeme/camera/feature/setting/zsd/ZSDParametersConfig;->mDeviceRequester:Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;

    return-void
.end method

.method private split(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance v0, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v1, 0x2c

    invoke-direct {v0, v1}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    invoke-interface {v0, p1}, Landroid/text/TextUtils$StringSplitter;->setString(Ljava/lang/String;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Landroid/text/TextUtils$StringSplitter;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object p1
.end method


# virtual methods
.method public configCommand(Lcom/freeme/camera/common/device/v1/CameraProxy;)V
    .locals 0

    return-void
.end method

.method public configParameters(Landroid/hardware/Camera$Parameters;)Z
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/zsd/ZSDParametersConfig;->mZsd:Lcom/freeme/camera/feature/setting/zsd/ZSD;

    invoke-virtual {v0}, Lcom/freeme/camera/feature/setting/zsd/ZSD;->getValue()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/zsd/ZSDParametersConfig;->mZsd:Lcom/freeme/camera/feature/setting/zsd/ZSD;

    invoke-virtual {v0}, Lcom/freeme/camera/feature/setting/zsd/ZSD;->getValue()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/zsd/ZSDParametersConfig;->mValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "zsd-mode"

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/zsd/ZSDParametersConfig;->mZsd:Lcom/freeme/camera/feature/setting/zsd/ZSD;

    invoke-virtual {v2}, Lcom/freeme/camera/feature/setting/zsd/ZSD;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/zsd/ZSDParametersConfig;->mZsd:Lcom/freeme/camera/feature/setting/zsd/ZSD;

    invoke-virtual {p1}, Lcom/freeme/camera/feature/setting/zsd/ZSD;->getValue()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/zsd/ZSDParametersConfig;->mValue:Ljava/lang/String;

    return v0
.end method

.method public sendSettingChangeRequest()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/zsd/ZSDParametersConfig;->mDeviceRequester:Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/zsd/ZSDParametersConfig;->mZsd:Lcom/freeme/camera/feature/setting/zsd/ZSD;

    invoke-virtual {v1}, Lcom/freeme/camera/feature/setting/zsd/ZSD;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeSettingValue(Ljava/lang/String;)V

    return-void
.end method

.method public setOriginalParameters(Landroid/hardware/Camera$Parameters;)V
    .locals 2

    const-string v0, "zsd-mode-values"

    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/freeme/camera/feature/setting/zsd/ZSDParametersConfig;->split(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const-string v1, "zsd-mode"

    invoke-virtual {p1, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/zsd/ZSDParametersConfig;->mZsd:Lcom/freeme/camera/feature/setting/zsd/ZSD;

    invoke-virtual {v1, v0, p1}, Lcom/freeme/camera/feature/setting/zsd/ZSD;->initializeValue(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method
