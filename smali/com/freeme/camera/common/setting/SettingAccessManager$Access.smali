.class public Lcom/freeme/camera/common/setting/SettingAccessManager$Access;
.super Ljava/lang/Object;
.source "SettingAccessManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/common/setting/SettingAccessManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Access"
.end annotation


# instance fields
.field private mName:Ljava/lang/String;

.field private mValid:Z

.field final synthetic this$0:Lcom/freeme/camera/common/setting/SettingAccessManager;


# direct methods
.method public constructor <init>(Lcom/freeme/camera/common/setting/SettingAccessManager;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/common/setting/SettingAccessManager$Access;->this$0:Lcom/freeme/camera/common/setting/SettingAccessManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/freeme/camera/common/setting/SettingAccessManager$Access;->mName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/freeme/camera/common/setting/SettingAccessManager$Access;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/common/setting/SettingAccessManager$Access;->mName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/freeme/camera/common/setting/SettingAccessManager$Access;)V
    .locals 0

    invoke-direct {p0}, Lcom/freeme/camera/common/setting/SettingAccessManager$Access;->validate()V

    return-void
.end method

.method static synthetic access$200(Lcom/freeme/camera/common/setting/SettingAccessManager$Access;)V
    .locals 0

    invoke-direct {p0}, Lcom/freeme/camera/common/setting/SettingAccessManager$Access;->invalidate()V

    return-void
.end method

.method private invalidate()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/freeme/camera/common/setting/SettingAccessManager$Access;->mValid:Z

    return-void
.end method

.method private validate()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/freeme/camera/common/setting/SettingAccessManager$Access;->mValid:Z

    return-void
.end method


# virtual methods
.method public isValid()Z
    .locals 1

    iget-boolean v0, p0, Lcom/freeme/camera/common/setting/SettingAccessManager$Access;->mValid:Z

    return v0
.end method
