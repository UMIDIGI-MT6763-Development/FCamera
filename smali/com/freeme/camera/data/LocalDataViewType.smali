.class public final enum Lcom/freeme/camera/data/LocalDataViewType;
.super Ljava/lang/Enum;
.source "LocalDataViewType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/freeme/camera/data/LocalDataViewType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/freeme/camera/data/LocalDataViewType;

.field public static final enum CAMERA_PREVIEW:Lcom/freeme/camera/data/LocalDataViewType;

.field public static final enum PHOTO:Lcom/freeme/camera/data/LocalDataViewType;

.field public static final enum SECURE_ALBUM_PLACEHOLDER:Lcom/freeme/camera/data/LocalDataViewType;

.field public static final enum SESSION:Lcom/freeme/camera/data/LocalDataViewType;

.field public static final enum VIDEO:Lcom/freeme/camera/data/LocalDataViewType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/freeme/camera/data/LocalDataViewType;

    const-string v1, "CAMERA_PREVIEW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/freeme/camera/data/LocalDataViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/freeme/camera/data/LocalDataViewType;->CAMERA_PREVIEW:Lcom/freeme/camera/data/LocalDataViewType;

    new-instance v0, Lcom/freeme/camera/data/LocalDataViewType;

    const-string v1, "PHOTO"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/freeme/camera/data/LocalDataViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/freeme/camera/data/LocalDataViewType;->PHOTO:Lcom/freeme/camera/data/LocalDataViewType;

    new-instance v0, Lcom/freeme/camera/data/LocalDataViewType;

    const-string v1, "VIDEO"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/freeme/camera/data/LocalDataViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/freeme/camera/data/LocalDataViewType;->VIDEO:Lcom/freeme/camera/data/LocalDataViewType;

    new-instance v0, Lcom/freeme/camera/data/LocalDataViewType;

    const-string v1, "SESSION"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/freeme/camera/data/LocalDataViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/freeme/camera/data/LocalDataViewType;->SESSION:Lcom/freeme/camera/data/LocalDataViewType;

    new-instance v0, Lcom/freeme/camera/data/LocalDataViewType;

    const-string v1, "SECURE_ALBUM_PLACEHOLDER"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/freeme/camera/data/LocalDataViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/freeme/camera/data/LocalDataViewType;->SECURE_ALBUM_PLACEHOLDER:Lcom/freeme/camera/data/LocalDataViewType;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/freeme/camera/data/LocalDataViewType;

    sget-object v1, Lcom/freeme/camera/data/LocalDataViewType;->CAMERA_PREVIEW:Lcom/freeme/camera/data/LocalDataViewType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/freeme/camera/data/LocalDataViewType;->PHOTO:Lcom/freeme/camera/data/LocalDataViewType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/freeme/camera/data/LocalDataViewType;->VIDEO:Lcom/freeme/camera/data/LocalDataViewType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/freeme/camera/data/LocalDataViewType;->SESSION:Lcom/freeme/camera/data/LocalDataViewType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/freeme/camera/data/LocalDataViewType;->SECURE_ALBUM_PLACEHOLDER:Lcom/freeme/camera/data/LocalDataViewType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/freeme/camera/data/LocalDataViewType;->$VALUES:[Lcom/freeme/camera/data/LocalDataViewType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/freeme/camera/data/LocalDataViewType;
    .locals 1

    const-class v0, Lcom/freeme/camera/data/LocalDataViewType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/freeme/camera/data/LocalDataViewType;

    return-object p0
.end method

.method public static values()[Lcom/freeme/camera/data/LocalDataViewType;
    .locals 1

    sget-object v0, Lcom/freeme/camera/data/LocalDataViewType;->$VALUES:[Lcom/freeme/camera/data/LocalDataViewType;

    invoke-virtual {v0}, [Lcom/freeme/camera/data/LocalDataViewType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/freeme/camera/data/LocalDataViewType;

    return-object v0
.end method
