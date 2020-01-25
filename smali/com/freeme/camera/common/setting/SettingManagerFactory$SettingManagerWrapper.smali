.class Lcom/freeme/camera/common/setting/SettingManagerFactory$SettingManagerWrapper;
.super Ljava/lang/Object;
.source "SettingManagerFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/common/setting/SettingManagerFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingManagerWrapper"
.end annotation


# instance fields
.field private mModeKey:Ljava/lang/String;

.field private mModeType:Lcom/freeme/camera/common/mode/ICameraMode$ModeType;

.field private final mSettingManager:Lcom/freeme/camera/common/setting/SettingManager;

.field final synthetic this$0:Lcom/freeme/camera/common/setting/SettingManagerFactory;


# direct methods
.method constructor <init>(Lcom/freeme/camera/common/setting/SettingManagerFactory;Lcom/freeme/camera/common/setting/SettingManager;Ljava/lang/String;Lcom/freeme/camera/common/mode/ICameraMode$ModeType;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/common/setting/SettingManagerFactory$SettingManagerWrapper;->this$0:Lcom/freeme/camera/common/setting/SettingManagerFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/freeme/camera/common/setting/SettingManagerFactory$SettingManagerWrapper;->mSettingManager:Lcom/freeme/camera/common/setting/SettingManager;

    iput-object p3, p0, Lcom/freeme/camera/common/setting/SettingManagerFactory$SettingManagerWrapper;->mModeKey:Ljava/lang/String;

    iput-object p4, p0, Lcom/freeme/camera/common/setting/SettingManagerFactory$SettingManagerWrapper;->mModeType:Lcom/freeme/camera/common/mode/ICameraMode$ModeType;

    return-void
.end method


# virtual methods
.method getModeKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/common/setting/SettingManagerFactory$SettingManagerWrapper;->mModeKey:Ljava/lang/String;

    return-object v0
.end method

.method getModeType()Lcom/freeme/camera/common/mode/ICameraMode$ModeType;
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/common/setting/SettingManagerFactory$SettingManagerWrapper;->mModeType:Lcom/freeme/camera/common/mode/ICameraMode$ModeType;

    return-object v0
.end method

.method getSettingManager()Lcom/freeme/camera/common/setting/SettingManager;
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/common/setting/SettingManagerFactory$SettingManagerWrapper;->mSettingManager:Lcom/freeme/camera/common/setting/SettingManager;

    return-object v0
.end method

.method updateModeKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/common/setting/SettingManagerFactory$SettingManagerWrapper;->mModeKey:Ljava/lang/String;

    return-void
.end method

.method updateModeType(Lcom/freeme/camera/common/mode/ICameraMode$ModeType;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/common/setting/SettingManagerFactory$SettingManagerWrapper;->mModeType:Lcom/freeme/camera/common/mode/ICameraMode$ModeType;

    return-void
.end method
