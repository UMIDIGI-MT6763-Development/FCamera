.class public final enum Lcom/badlogic/gdx/Input$Peripheral;
.super Ljava/lang/Enum;
.source "Input.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/Input;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Peripheral"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/badlogic/gdx/Input$Peripheral;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/badlogic/gdx/Input$Peripheral;

.field public static final enum Accelerometer:Lcom/badlogic/gdx/Input$Peripheral;

.field public static final enum Compass:Lcom/badlogic/gdx/Input$Peripheral;

.field public static final enum HardwareKeyboard:Lcom/badlogic/gdx/Input$Peripheral;

.field public static final enum MultitouchScreen:Lcom/badlogic/gdx/Input$Peripheral;

.field public static final enum OnscreenKeyboard:Lcom/badlogic/gdx/Input$Peripheral;

.field public static final enum Vibrator:Lcom/badlogic/gdx/Input$Peripheral;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/badlogic/gdx/Input$Peripheral;

    const-string v1, "HardwareKeyboard"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/Input$Peripheral;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/Input$Peripheral;->HardwareKeyboard:Lcom/badlogic/gdx/Input$Peripheral;

    new-instance v0, Lcom/badlogic/gdx/Input$Peripheral;

    const-string v1, "OnscreenKeyboard"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/badlogic/gdx/Input$Peripheral;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/Input$Peripheral;->OnscreenKeyboard:Lcom/badlogic/gdx/Input$Peripheral;

    new-instance v0, Lcom/badlogic/gdx/Input$Peripheral;

    const-string v1, "MultitouchScreen"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/badlogic/gdx/Input$Peripheral;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/Input$Peripheral;->MultitouchScreen:Lcom/badlogic/gdx/Input$Peripheral;

    new-instance v0, Lcom/badlogic/gdx/Input$Peripheral;

    const-string v1, "Accelerometer"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/badlogic/gdx/Input$Peripheral;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/Input$Peripheral;->Accelerometer:Lcom/badlogic/gdx/Input$Peripheral;

    new-instance v0, Lcom/badlogic/gdx/Input$Peripheral;

    const-string v1, "Compass"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/badlogic/gdx/Input$Peripheral;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/Input$Peripheral;->Compass:Lcom/badlogic/gdx/Input$Peripheral;

    new-instance v0, Lcom/badlogic/gdx/Input$Peripheral;

    const-string v1, "Vibrator"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/badlogic/gdx/Input$Peripheral;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/Input$Peripheral;->Vibrator:Lcom/badlogic/gdx/Input$Peripheral;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/badlogic/gdx/Input$Peripheral;

    sget-object v1, Lcom/badlogic/gdx/Input$Peripheral;->HardwareKeyboard:Lcom/badlogic/gdx/Input$Peripheral;

    aput-object v1, v0, v2

    sget-object v1, Lcom/badlogic/gdx/Input$Peripheral;->OnscreenKeyboard:Lcom/badlogic/gdx/Input$Peripheral;

    aput-object v1, v0, v3

    sget-object v1, Lcom/badlogic/gdx/Input$Peripheral;->MultitouchScreen:Lcom/badlogic/gdx/Input$Peripheral;

    aput-object v1, v0, v4

    sget-object v1, Lcom/badlogic/gdx/Input$Peripheral;->Accelerometer:Lcom/badlogic/gdx/Input$Peripheral;

    aput-object v1, v0, v5

    sget-object v1, Lcom/badlogic/gdx/Input$Peripheral;->Compass:Lcom/badlogic/gdx/Input$Peripheral;

    aput-object v1, v0, v6

    sget-object v1, Lcom/badlogic/gdx/Input$Peripheral;->Vibrator:Lcom/badlogic/gdx/Input$Peripheral;

    aput-object v1, v0, v7

    sput-object v0, Lcom/badlogic/gdx/Input$Peripheral;->$VALUES:[Lcom/badlogic/gdx/Input$Peripheral;

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

.method public static valueOf(Ljava/lang/String;)Lcom/badlogic/gdx/Input$Peripheral;
    .locals 1

    const-class v0, Lcom/badlogic/gdx/Input$Peripheral;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/badlogic/gdx/Input$Peripheral;

    return-object p0
.end method

.method public static values()[Lcom/badlogic/gdx/Input$Peripheral;
    .locals 1

    sget-object v0, Lcom/badlogic/gdx/Input$Peripheral;->$VALUES:[Lcom/badlogic/gdx/Input$Peripheral;

    invoke-virtual {v0}, [Lcom/badlogic/gdx/Input$Peripheral;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/badlogic/gdx/Input$Peripheral;

    return-object v0
.end method
