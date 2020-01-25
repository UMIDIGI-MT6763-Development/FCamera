.class Lcom/freeme/camera/common/setting/SettingBase$Overrides;
.super Ljava/lang/Object;
.source "SettingBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/common/setting/SettingBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Overrides"
.end annotation


# instance fields
.field public entryValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public headerKey:Ljava/lang/String;

.field final synthetic this$0:Lcom/freeme/camera/common/setting/SettingBase;

.field public value:Ljava/lang/String;

.field public valueWhenOverride:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/freeme/camera/common/setting/SettingBase;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/common/setting/SettingBase$Overrides;->this$0:Lcom/freeme/camera/common/setting/SettingBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/freeme/camera/common/setting/SettingBase;Lcom/freeme/camera/common/setting/SettingBase$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/freeme/camera/common/setting/SettingBase$Overrides;-><init>(Lcom/freeme/camera/common/setting/SettingBase;)V

    return-void
.end method
