.class public final enum Lcom/badlogic/gdx/utils/Scaling;
.super Ljava/lang/Enum;
.source "Scaling.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/badlogic/gdx/utils/Scaling;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/badlogic/gdx/utils/Scaling;

.field public static final enum fill:Lcom/badlogic/gdx/utils/Scaling;

.field public static final enum fillX:Lcom/badlogic/gdx/utils/Scaling;

.field public static final enum fillY:Lcom/badlogic/gdx/utils/Scaling;

.field public static final enum fit:Lcom/badlogic/gdx/utils/Scaling;

.field public static final enum none:Lcom/badlogic/gdx/utils/Scaling;

.field public static final enum stretch:Lcom/badlogic/gdx/utils/Scaling;

.field public static final enum stretchX:Lcom/badlogic/gdx/utils/Scaling;

.field public static final enum stretchY:Lcom/badlogic/gdx/utils/Scaling;

.field private static final temp:Lcom/badlogic/gdx/math/Vector2;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lcom/badlogic/gdx/utils/Scaling;

    const-string v1, "fit"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/utils/Scaling;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/utils/Scaling;->fit:Lcom/badlogic/gdx/utils/Scaling;

    new-instance v0, Lcom/badlogic/gdx/utils/Scaling;

    const-string v1, "fill"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/badlogic/gdx/utils/Scaling;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/utils/Scaling;->fill:Lcom/badlogic/gdx/utils/Scaling;

    new-instance v0, Lcom/badlogic/gdx/utils/Scaling;

    const-string v1, "fillX"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/badlogic/gdx/utils/Scaling;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/utils/Scaling;->fillX:Lcom/badlogic/gdx/utils/Scaling;

    new-instance v0, Lcom/badlogic/gdx/utils/Scaling;

    const-string v1, "fillY"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/badlogic/gdx/utils/Scaling;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/utils/Scaling;->fillY:Lcom/badlogic/gdx/utils/Scaling;

    new-instance v0, Lcom/badlogic/gdx/utils/Scaling;

    const-string v1, "stretch"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/badlogic/gdx/utils/Scaling;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/utils/Scaling;->stretch:Lcom/badlogic/gdx/utils/Scaling;

    new-instance v0, Lcom/badlogic/gdx/utils/Scaling;

    const-string v1, "stretchX"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/badlogic/gdx/utils/Scaling;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/utils/Scaling;->stretchX:Lcom/badlogic/gdx/utils/Scaling;

    new-instance v0, Lcom/badlogic/gdx/utils/Scaling;

    const-string v1, "stretchY"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/badlogic/gdx/utils/Scaling;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/utils/Scaling;->stretchY:Lcom/badlogic/gdx/utils/Scaling;

    new-instance v0, Lcom/badlogic/gdx/utils/Scaling;

    const-string v1, "none"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/badlogic/gdx/utils/Scaling;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/utils/Scaling;->none:Lcom/badlogic/gdx/utils/Scaling;

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/badlogic/gdx/utils/Scaling;

    sget-object v1, Lcom/badlogic/gdx/utils/Scaling;->fit:Lcom/badlogic/gdx/utils/Scaling;

    aput-object v1, v0, v2

    sget-object v1, Lcom/badlogic/gdx/utils/Scaling;->fill:Lcom/badlogic/gdx/utils/Scaling;

    aput-object v1, v0, v3

    sget-object v1, Lcom/badlogic/gdx/utils/Scaling;->fillX:Lcom/badlogic/gdx/utils/Scaling;

    aput-object v1, v0, v4

    sget-object v1, Lcom/badlogic/gdx/utils/Scaling;->fillY:Lcom/badlogic/gdx/utils/Scaling;

    aput-object v1, v0, v5

    sget-object v1, Lcom/badlogic/gdx/utils/Scaling;->stretch:Lcom/badlogic/gdx/utils/Scaling;

    aput-object v1, v0, v6

    sget-object v1, Lcom/badlogic/gdx/utils/Scaling;->stretchX:Lcom/badlogic/gdx/utils/Scaling;

    aput-object v1, v0, v7

    sget-object v1, Lcom/badlogic/gdx/utils/Scaling;->stretchY:Lcom/badlogic/gdx/utils/Scaling;

    aput-object v1, v0, v8

    sget-object v1, Lcom/badlogic/gdx/utils/Scaling;->none:Lcom/badlogic/gdx/utils/Scaling;

    aput-object v1, v0, v9

    sput-object v0, Lcom/badlogic/gdx/utils/Scaling;->$VALUES:[Lcom/badlogic/gdx/utils/Scaling;

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/utils/Scaling;->temp:Lcom/badlogic/gdx/math/Vector2;

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

.method public static valueOf(Ljava/lang/String;)Lcom/badlogic/gdx/utils/Scaling;
    .locals 1

    const-class v0, Lcom/badlogic/gdx/utils/Scaling;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/badlogic/gdx/utils/Scaling;

    return-object p0
.end method

.method public static values()[Lcom/badlogic/gdx/utils/Scaling;
    .locals 1

    sget-object v0, Lcom/badlogic/gdx/utils/Scaling;->$VALUES:[Lcom/badlogic/gdx/utils/Scaling;

    invoke-virtual {v0}, [Lcom/badlogic/gdx/utils/Scaling;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/badlogic/gdx/utils/Scaling;

    return-object v0
.end method


# virtual methods
.method public apply(FFFF)Lcom/badlogic/gdx/math/Vector2;
    .locals 2

    sget-object v0, Lcom/badlogic/gdx/utils/Scaling$1;->$SwitchMap$com$badlogic$gdx$utils$Scaling:[I

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/Scaling;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    sget-object p3, Lcom/badlogic/gdx/utils/Scaling;->temp:Lcom/badlogic/gdx/math/Vector2;

    iput p1, p3, Lcom/badlogic/gdx/math/Vector2;->x:F

    iput p2, p3, Lcom/badlogic/gdx/math/Vector2;->y:F

    goto :goto_2

    :pswitch_1
    sget-object p2, Lcom/badlogic/gdx/utils/Scaling;->temp:Lcom/badlogic/gdx/math/Vector2;

    iput p1, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iput p4, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    goto :goto_2

    :pswitch_2
    sget-object p1, Lcom/badlogic/gdx/utils/Scaling;->temp:Lcom/badlogic/gdx/math/Vector2;

    iput p3, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iput p2, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    goto :goto_2

    :pswitch_3
    sget-object p1, Lcom/badlogic/gdx/utils/Scaling;->temp:Lcom/badlogic/gdx/math/Vector2;

    iput p3, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iput p4, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    goto :goto_2

    :pswitch_4
    div-float/2addr p4, p2

    sget-object p3, Lcom/badlogic/gdx/utils/Scaling;->temp:Lcom/badlogic/gdx/math/Vector2;

    mul-float/2addr p1, p4

    iput p1, p3, Lcom/badlogic/gdx/math/Vector2;->x:F

    mul-float/2addr p2, p4

    iput p2, p3, Lcom/badlogic/gdx/math/Vector2;->y:F

    goto :goto_2

    :pswitch_5
    div-float/2addr p3, p1

    sget-object p4, Lcom/badlogic/gdx/utils/Scaling;->temp:Lcom/badlogic/gdx/math/Vector2;

    mul-float/2addr p1, p3

    iput p1, p4, Lcom/badlogic/gdx/math/Vector2;->x:F

    mul-float/2addr p2, p3

    iput p2, p4, Lcom/badlogic/gdx/math/Vector2;->y:F

    goto :goto_2

    :pswitch_6
    div-float v0, p4, p3

    div-float v1, p2, p1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    div-float/2addr p3, p1

    goto :goto_0

    :cond_0
    div-float p3, p4, p2

    :goto_0
    sget-object p4, Lcom/badlogic/gdx/utils/Scaling;->temp:Lcom/badlogic/gdx/math/Vector2;

    mul-float/2addr p1, p3

    iput p1, p4, Lcom/badlogic/gdx/math/Vector2;->x:F

    mul-float/2addr p2, p3

    iput p2, p4, Lcom/badlogic/gdx/math/Vector2;->y:F

    goto :goto_2

    :pswitch_7
    div-float v0, p4, p3

    div-float v1, p2, p1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    div-float/2addr p3, p1

    goto :goto_1

    :cond_1
    div-float p3, p4, p2

    :goto_1
    sget-object p4, Lcom/badlogic/gdx/utils/Scaling;->temp:Lcom/badlogic/gdx/math/Vector2;

    mul-float/2addr p1, p3

    iput p1, p4, Lcom/badlogic/gdx/math/Vector2;->x:F

    mul-float/2addr p2, p3

    iput p2, p4, Lcom/badlogic/gdx/math/Vector2;->y:F

    :goto_2
    sget-object p1, Lcom/badlogic/gdx/utils/Scaling;->temp:Lcom/badlogic/gdx/math/Vector2;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
