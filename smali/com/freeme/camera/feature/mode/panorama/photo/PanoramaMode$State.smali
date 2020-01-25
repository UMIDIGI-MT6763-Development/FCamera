.class final enum Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode$State;
.super Ljava/lang/Enum;
.source "PanoramaMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode$State;

.field public static final enum STATE_CAPTURING:Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode$State;

.field public static final enum STATE_CLOSED:Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode$State;

.field public static final enum STATE_IDLE:Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode$State;

.field public static final enum STATE_UNKNOWN:Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode$State;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode$State;

    const-string v1, "STATE_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode$State;->STATE_UNKNOWN:Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode$State;

    new-instance v0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode$State;

    const-string v1, "STATE_IDLE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode$State;->STATE_IDLE:Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode$State;

    new-instance v0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode$State;

    const-string v1, "STATE_CAPTURING"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode$State;->STATE_CAPTURING:Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode$State;

    new-instance v0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode$State;

    const-string v1, "STATE_CLOSED"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode$State;->STATE_CLOSED:Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode$State;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode$State;

    sget-object v1, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode$State;->STATE_UNKNOWN:Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode$State;->STATE_IDLE:Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode$State;->STATE_CAPTURING:Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode$State;->STATE_CLOSED:Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode$State;

    aput-object v1, v0, v5

    sput-object v0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode$State;->$VALUES:[Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode$State;

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

.method public static valueOf(Ljava/lang/String;)Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode$State;
    .locals 1

    const-class v0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode$State;

    return-object p0
.end method

.method public static values()[Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode$State;
    .locals 1

    sget-object v0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode$State;->$VALUES:[Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode$State;

    invoke-virtual {v0}, [Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode$State;

    return-object v0
.end method
