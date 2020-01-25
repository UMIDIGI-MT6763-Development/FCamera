.class public final enum Lcom/freeme/camera/common/utils/CameraUtil$TableList;
.super Ljava/lang/Enum;
.source "CameraUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/common/utils/CameraUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TableList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/freeme/camera/common/utils/CameraUtil$TableList;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/freeme/camera/common/utils/CameraUtil$TableList;

.field public static final enum FILE_TABLE:Lcom/freeme/camera/common/utils/CameraUtil$TableList;

.field public static final enum IMAGE_TABLE:Lcom/freeme/camera/common/utils/CameraUtil$TableList;

.field public static final enum VIDEO_TABLE:Lcom/freeme/camera/common/utils/CameraUtil$TableList;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/freeme/camera/common/utils/CameraUtil$TableList;

    const-string v1, "FILE_TABLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/freeme/camera/common/utils/CameraUtil$TableList;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/freeme/camera/common/utils/CameraUtil$TableList;->FILE_TABLE:Lcom/freeme/camera/common/utils/CameraUtil$TableList;

    new-instance v0, Lcom/freeme/camera/common/utils/CameraUtil$TableList;

    const-string v1, "VIDEO_TABLE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/freeme/camera/common/utils/CameraUtil$TableList;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/freeme/camera/common/utils/CameraUtil$TableList;->VIDEO_TABLE:Lcom/freeme/camera/common/utils/CameraUtil$TableList;

    new-instance v0, Lcom/freeme/camera/common/utils/CameraUtil$TableList;

    const-string v1, "IMAGE_TABLE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/freeme/camera/common/utils/CameraUtil$TableList;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/freeme/camera/common/utils/CameraUtil$TableList;->IMAGE_TABLE:Lcom/freeme/camera/common/utils/CameraUtil$TableList;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/freeme/camera/common/utils/CameraUtil$TableList;

    sget-object v1, Lcom/freeme/camera/common/utils/CameraUtil$TableList;->FILE_TABLE:Lcom/freeme/camera/common/utils/CameraUtil$TableList;

    aput-object v1, v0, v2

    sget-object v1, Lcom/freeme/camera/common/utils/CameraUtil$TableList;->VIDEO_TABLE:Lcom/freeme/camera/common/utils/CameraUtil$TableList;

    aput-object v1, v0, v3

    sget-object v1, Lcom/freeme/camera/common/utils/CameraUtil$TableList;->IMAGE_TABLE:Lcom/freeme/camera/common/utils/CameraUtil$TableList;

    aput-object v1, v0, v4

    sput-object v0, Lcom/freeme/camera/common/utils/CameraUtil$TableList;->$VALUES:[Lcom/freeme/camera/common/utils/CameraUtil$TableList;

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

.method public static valueOf(Ljava/lang/String;)Lcom/freeme/camera/common/utils/CameraUtil$TableList;
    .locals 1

    const-class v0, Lcom/freeme/camera/common/utils/CameraUtil$TableList;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/freeme/camera/common/utils/CameraUtil$TableList;

    return-object p0
.end method

.method public static values()[Lcom/freeme/camera/common/utils/CameraUtil$TableList;
    .locals 1

    sget-object v0, Lcom/freeme/camera/common/utils/CameraUtil$TableList;->$VALUES:[Lcom/freeme/camera/common/utils/CameraUtil$TableList;

    invoke-virtual {v0}, [Lcom/freeme/camera/common/utils/CameraUtil$TableList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/freeme/camera/common/utils/CameraUtil$TableList;

    return-object v0
.end method
