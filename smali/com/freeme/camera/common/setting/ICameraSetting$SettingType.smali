.class public final enum Lcom/freeme/camera/common/setting/ICameraSetting$SettingType;
.super Ljava/lang/Enum;
.source "ICameraSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/common/setting/ICameraSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SettingType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/freeme/camera/common/setting/ICameraSetting$SettingType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/freeme/camera/common/setting/ICameraSetting$SettingType;

.field public static final enum PHOTO:Lcom/freeme/camera/common/setting/ICameraSetting$SettingType;

.field public static final enum PHOTO_AND_VIDEO:Lcom/freeme/camera/common/setting/ICameraSetting$SettingType;

.field public static final enum VIDEO:Lcom/freeme/camera/common/setting/ICameraSetting$SettingType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/freeme/camera/common/setting/ICameraSetting$SettingType;

    const-string v1, "PHOTO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/freeme/camera/common/setting/ICameraSetting$SettingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/freeme/camera/common/setting/ICameraSetting$SettingType;->PHOTO:Lcom/freeme/camera/common/setting/ICameraSetting$SettingType;

    new-instance v0, Lcom/freeme/camera/common/setting/ICameraSetting$SettingType;

    const-string v1, "VIDEO"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/freeme/camera/common/setting/ICameraSetting$SettingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/freeme/camera/common/setting/ICameraSetting$SettingType;->VIDEO:Lcom/freeme/camera/common/setting/ICameraSetting$SettingType;

    new-instance v0, Lcom/freeme/camera/common/setting/ICameraSetting$SettingType;

    const-string v1, "PHOTO_AND_VIDEO"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/freeme/camera/common/setting/ICameraSetting$SettingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/freeme/camera/common/setting/ICameraSetting$SettingType;->PHOTO_AND_VIDEO:Lcom/freeme/camera/common/setting/ICameraSetting$SettingType;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/freeme/camera/common/setting/ICameraSetting$SettingType;

    sget-object v1, Lcom/freeme/camera/common/setting/ICameraSetting$SettingType;->PHOTO:Lcom/freeme/camera/common/setting/ICameraSetting$SettingType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/freeme/camera/common/setting/ICameraSetting$SettingType;->VIDEO:Lcom/freeme/camera/common/setting/ICameraSetting$SettingType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/freeme/camera/common/setting/ICameraSetting$SettingType;->PHOTO_AND_VIDEO:Lcom/freeme/camera/common/setting/ICameraSetting$SettingType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/freeme/camera/common/setting/ICameraSetting$SettingType;->$VALUES:[Lcom/freeme/camera/common/setting/ICameraSetting$SettingType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/freeme/camera/common/setting/ICameraSetting$SettingType;
    .locals 1

    const-class v0, Lcom/freeme/camera/common/setting/ICameraSetting$SettingType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/freeme/camera/common/setting/ICameraSetting$SettingType;

    return-object p0
.end method

.method public static values()[Lcom/freeme/camera/common/setting/ICameraSetting$SettingType;
    .locals 1

    sget-object v0, Lcom/freeme/camera/common/setting/ICameraSetting$SettingType;->$VALUES:[Lcom/freeme/camera/common/setting/ICameraSetting$SettingType;

    invoke-virtual {v0}, [Lcom/freeme/camera/common/setting/ICameraSetting$SettingType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/freeme/camera/common/setting/ICameraSetting$SettingType;

    return-object v0
.end method
