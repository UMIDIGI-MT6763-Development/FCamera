.class public final enum Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout$CurrentTargetIndex;
.super Ljava/lang/Enum;
.source "DragScrollDetailsLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CurrentTargetIndex"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout$CurrentTargetIndex;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout$CurrentTargetIndex;

.field public static final enum DOWNSTAIRS:Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout$CurrentTargetIndex;

.field public static final enum UPSTAIRS:Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout$CurrentTargetIndex;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout$CurrentTargetIndex;

    const-string v1, "UPSTAIRS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout$CurrentTargetIndex;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout$CurrentTargetIndex;->UPSTAIRS:Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout$CurrentTargetIndex;

    new-instance v0, Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout$CurrentTargetIndex;

    const-string v1, "DOWNSTAIRS"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout$CurrentTargetIndex;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout$CurrentTargetIndex;->DOWNSTAIRS:Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout$CurrentTargetIndex;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout$CurrentTargetIndex;

    sget-object v1, Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout$CurrentTargetIndex;->UPSTAIRS:Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout$CurrentTargetIndex;

    aput-object v1, v0, v2

    sget-object v1, Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout$CurrentTargetIndex;->DOWNSTAIRS:Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout$CurrentTargetIndex;

    aput-object v1, v0, v3

    sput-object v0, Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout$CurrentTargetIndex;->$VALUES:[Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout$CurrentTargetIndex;

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

.method public static valueOf(I)Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout$CurrentTargetIndex;
    .locals 1

    const/4 v0, 0x1

    if-ne v0, p0, :cond_0

    sget-object p0, Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout$CurrentTargetIndex;->DOWNSTAIRS:Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout$CurrentTargetIndex;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout$CurrentTargetIndex;->UPSTAIRS:Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout$CurrentTargetIndex;

    :goto_0
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout$CurrentTargetIndex;
    .locals 1

    const-class v0, Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout$CurrentTargetIndex;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout$CurrentTargetIndex;

    return-object p0
.end method

.method public static values()[Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout$CurrentTargetIndex;
    .locals 1

    sget-object v0, Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout$CurrentTargetIndex;->$VALUES:[Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout$CurrentTargetIndex;

    invoke-virtual {v0}, [Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout$CurrentTargetIndex;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout$CurrentTargetIndex;

    return-object v0
.end method
