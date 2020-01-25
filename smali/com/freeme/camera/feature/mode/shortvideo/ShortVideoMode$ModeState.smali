.class public final enum Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode$ModeState;
.super Ljava/lang/Enum;
.source "ShortVideoMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "ModeState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode$ModeState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode$ModeState;

.field public static final enum STATE_PAUSED:Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode$ModeState;

.field public static final enum STATE_RESUMED:Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode$ModeState;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode$ModeState;

    const-string v1, "STATE_RESUMED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode$ModeState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode$ModeState;->STATE_RESUMED:Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode$ModeState;

    new-instance v0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode$ModeState;

    const-string v1, "STATE_PAUSED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode$ModeState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode$ModeState;->STATE_PAUSED:Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode$ModeState;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode$ModeState;

    sget-object v1, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode$ModeState;->STATE_RESUMED:Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode$ModeState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode$ModeState;->STATE_PAUSED:Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode$ModeState;

    aput-object v1, v0, v3

    sput-object v0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode$ModeState;->$VALUES:[Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode$ModeState;

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

.method public static valueOf(Ljava/lang/String;)Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode$ModeState;
    .locals 1

    const-class v0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode$ModeState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode$ModeState;

    return-object p0
.end method

.method public static values()[Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode$ModeState;
    .locals 1

    sget-object v0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode$ModeState;->$VALUES:[Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode$ModeState;

    invoke-virtual {v0}, [Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode$ModeState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode$ModeState;

    return-object v0
.end method
