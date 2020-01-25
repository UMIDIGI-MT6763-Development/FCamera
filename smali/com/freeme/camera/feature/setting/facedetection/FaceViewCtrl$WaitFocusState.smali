.class final enum Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl$WaitFocusState;
.super Ljava/lang/Enum;
.source "FaceViewCtrl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "WaitFocusState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl$WaitFocusState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl$WaitFocusState;

.field public static final enum WAIT_NOTHING:Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl$WaitFocusState;

.field public static final enum WAIT_PASSIVE_DONE:Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl$WaitFocusState;

.field public static final enum WAIT_PASSIVE_SCAN:Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl$WaitFocusState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl$WaitFocusState;

    const-string v1, "WAIT_PASSIVE_SCAN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl$WaitFocusState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl$WaitFocusState;->WAIT_PASSIVE_SCAN:Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl$WaitFocusState;

    new-instance v0, Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl$WaitFocusState;

    const-string v1, "WAIT_PASSIVE_DONE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl$WaitFocusState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl$WaitFocusState;->WAIT_PASSIVE_DONE:Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl$WaitFocusState;

    new-instance v0, Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl$WaitFocusState;

    const-string v1, "WAIT_NOTHING"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl$WaitFocusState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl$WaitFocusState;->WAIT_NOTHING:Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl$WaitFocusState;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl$WaitFocusState;

    sget-object v1, Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl$WaitFocusState;->WAIT_PASSIVE_SCAN:Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl$WaitFocusState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl$WaitFocusState;->WAIT_PASSIVE_DONE:Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl$WaitFocusState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl$WaitFocusState;->WAIT_NOTHING:Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl$WaitFocusState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl$WaitFocusState;->$VALUES:[Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl$WaitFocusState;

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

.method public static valueOf(Ljava/lang/String;)Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl$WaitFocusState;
    .locals 1

    const-class v0, Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl$WaitFocusState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl$WaitFocusState;

    return-object p0
.end method

.method public static values()[Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl$WaitFocusState;
    .locals 1

    sget-object v0, Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl$WaitFocusState;->$VALUES:[Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl$WaitFocusState;

    invoke-virtual {v0}, [Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl$WaitFocusState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl$WaitFocusState;

    return-object v0
.end method
