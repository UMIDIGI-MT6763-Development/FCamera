.class public Lcom/freeme/camera/feature/mode/facecute/FFBResource;
.super Ljava/lang/Object;
.source "FFBResource.java"


# static fields
.field public static final CARTOON_DRAWABLE_RES:[I

.field public static final DECORATION_DRAWABLE_RES:[I

.field public static final DELIGHT_DRAWABLE_RES:[I

.field public static final EFFECT_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXPRESSION_DRAWABLE_RES:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x4

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/freeme/camera/feature/mode/facecute/FFBResource;->DECORATION_DRAWABLE_RES:[I

    const/4 v1, 0x5

    new-array v1, v1, [I

    fill-array-data v1, :array_1

    sput-object v1, Lcom/freeme/camera/feature/mode/facecute/FFBResource;->DELIGHT_DRAWABLE_RES:[I

    new-array v1, v0, [I

    fill-array-data v1, :array_2

    sput-object v1, Lcom/freeme/camera/feature/mode/facecute/FFBResource;->CARTOON_DRAWABLE_RES:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/freeme/camera/feature/mode/facecute/FFBResource;->EXPRESSION_DRAWABLE_RES:[I

    new-instance v0, Lcom/freeme/camera/feature/mode/facecute/FFBResource$1;

    invoke-direct {v0}, Lcom/freeme/camera/feature/mode/facecute/FFBResource$1;-><init>()V

    sput-object v0, Lcom/freeme/camera/feature/mode/facecute/FFBResource;->EFFECT_MAP:Ljava/util/HashMap;

    return-void

    :array_0
    .array-data 4
        0x7f0800e9
        0x7f0800ea
        0x7f0800ed
        0x7f0800ee
    .end array-data

    :array_1
    .array-data 4
        0x7f0800f5
        0x7f0800ef
        0x7f0800f0
        0x7f0800f2
        0x7f0800f1
    .end array-data

    :array_2
    .array-data 4
        0x7f0800e3
        0x7f0800e7
        0x7f0800e4
        0x7f0800e8
    .end array-data

    :array_3
    .array-data 4
        0x7f0800f9
        0x7f0800fa
        0x7f0800f8
        0x7f0800f6
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getEffectById(I)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/freeme/camera/feature/mode/facecute/FFBResource;->EFFECT_MAP:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/freeme/camera/feature/mode/facecute/FFBResource;->EFFECT_MAP:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method
