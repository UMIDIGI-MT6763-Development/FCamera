.class public final enum Lcom/freeme/camera/ui/modepicker/ModeItemAdapter$ITEM_TYPE;
.super Ljava/lang/Enum;
.source "ModeItemAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/ui/modepicker/ModeItemAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ITEM_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/freeme/camera/ui/modepicker/ModeItemAdapter$ITEM_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/freeme/camera/ui/modepicker/ModeItemAdapter$ITEM_TYPE;

.field public static final enum ITEM_TYPE_IMAGE:Lcom/freeme/camera/ui/modepicker/ModeItemAdapter$ITEM_TYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/freeme/camera/ui/modepicker/ModeItemAdapter$ITEM_TYPE;

    const-string v1, "ITEM_TYPE_IMAGE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/freeme/camera/ui/modepicker/ModeItemAdapter$ITEM_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/freeme/camera/ui/modepicker/ModeItemAdapter$ITEM_TYPE;->ITEM_TYPE_IMAGE:Lcom/freeme/camera/ui/modepicker/ModeItemAdapter$ITEM_TYPE;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/freeme/camera/ui/modepicker/ModeItemAdapter$ITEM_TYPE;

    sget-object v1, Lcom/freeme/camera/ui/modepicker/ModeItemAdapter$ITEM_TYPE;->ITEM_TYPE_IMAGE:Lcom/freeme/camera/ui/modepicker/ModeItemAdapter$ITEM_TYPE;

    aput-object v1, v0, v2

    sput-object v0, Lcom/freeme/camera/ui/modepicker/ModeItemAdapter$ITEM_TYPE;->$VALUES:[Lcom/freeme/camera/ui/modepicker/ModeItemAdapter$ITEM_TYPE;

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

.method public static valueOf(Ljava/lang/String;)Lcom/freeme/camera/ui/modepicker/ModeItemAdapter$ITEM_TYPE;
    .locals 1

    const-class v0, Lcom/freeme/camera/ui/modepicker/ModeItemAdapter$ITEM_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/freeme/camera/ui/modepicker/ModeItemAdapter$ITEM_TYPE;

    return-object p0
.end method

.method public static values()[Lcom/freeme/camera/ui/modepicker/ModeItemAdapter$ITEM_TYPE;
    .locals 1

    sget-object v0, Lcom/freeme/camera/ui/modepicker/ModeItemAdapter$ITEM_TYPE;->$VALUES:[Lcom/freeme/camera/ui/modepicker/ModeItemAdapter$ITEM_TYPE;

    invoke-virtual {v0}, [Lcom/freeme/camera/ui/modepicker/ModeItemAdapter$ITEM_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/freeme/camera/ui/modepicker/ModeItemAdapter$ITEM_TYPE;

    return-object v0
.end method
