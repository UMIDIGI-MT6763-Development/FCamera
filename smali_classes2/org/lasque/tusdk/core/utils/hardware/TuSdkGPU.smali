.class public Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU$GpuTypeVivante;,
        Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU$GpuTypeImmersion;,
        Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU$GpuTypeNvidia;,
        Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU$GpuTypeAdreno;,
        Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU$GpuTypePowerVR;,
        Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU$GpuTypeMali;,
        Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU$GpuType;
    }
.end annotation


# static fields
.field private static a:I = 0x0

.field private static b:I = 0x7d0

.field private static c:Ljava/lang/String;

.field private static d:Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU$GpuType;

.field private static e:Z

.field private static f:Z

.field private static g:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU$GpuType;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU$GpuType;

    const/4 v1, 0x0

    const/16 v2, 0x7d0

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v1, v3}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU$GpuType;-><init>(IIII)V

    sput-object v0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU;->d:Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU$GpuType;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU;->g:Ljava/util/Hashtable;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()V
    .locals 13

    sget-object v0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU;->g:Ljava/util/Hashtable;

    const-string v1, "Mali"

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU$GpuTypeMali;

    const/16 v1, 0x7d0

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/16 v5, 0x12c

    invoke-direct {v0, v5, v1, v4, v3}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU$GpuTypeMali;-><init>(IIII)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU$GpuTypeMali;

    const/16 v5, 0x190

    invoke-direct {v0, v5, v1, v4, v3}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU$GpuTypeMali;-><init>(IIII)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU$GpuTypeMali;

    const/16 v6, 0xbb8

    const/4 v7, 0x3

    const/4 v8, 0x4

    invoke-direct {v0, v5, v6, v8, v7}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU$GpuTypeMali;-><init>(IIII)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU$GpuTypeMali;

    const/4 v5, 0x5

    const/16 v9, 0xfa0

    const/16 v10, 0x1c2

    invoke-direct {v0, v10, v9, v8, v5}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU$GpuTypeMali;-><init>(IIII)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU$GpuTypeMali;

    const/16 v10, 0x25c

    invoke-direct {v0, v10, v6, v8, v7}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU$GpuTypeMali;-><init>(IIII)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU$GpuTypeMali;

    const/16 v10, 0x26e

    const/16 v11, 0xaf0

    invoke-direct {v0, v10, v11, v8, v3}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU$GpuTypeMali;-><init>(IIII)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU$GpuTypeMali;

    const/16 v10, 0x270

    invoke-direct {v0, v10, v9, v8, v8}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU$GpuTypeMali;-><init>(IIII)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU$GpuTypeMali;

    const/4 v10, 0x6

    const/16 v11, 0x274

    invoke-direct {v0, v11, v9, v10, v8}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU$GpuTypeMali;-><init>(IIII)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU$GpuTypeMali;

    const/16 v11, 0x2f8

    invoke-direct {v0, v11, v9, v10, v8}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU$GpuTypeMali;-><init>(IIII)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU$GpuTypeMali;

    const/16 v11, 0x370

    invoke-direct {v0, v11, v9, v10, v5}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU$GpuTypeMali;-><init>(IIII)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU$GpuTypeMali;

    const/16 v11, 0x1bbc

    invoke-direct {v0, v11, v9, v10, v5}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU$GpuTypeMali;-><init>(IIII)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU$GpuTypeMali;

    const/16 v11, 0x1c20

    invoke-direct {v0, v11, v9, v10, v5}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU$GpuTypeMali;-><init>(IIII)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU;->g:Ljava/util/Hashtable;

    const-string v2, "Adreno"

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v2, v10}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU$GpuTypeAdreno;

    const/16 v2, 0x82

    invoke-direct {v0, v2, v1, v4, v3}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU$GpuTypeAdreno;-><init>(IIII)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU$GpuTypeAdreno;

    const/16 v2, 0xc8

    invoke-direct {v0, v2, v1, v4, v3}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU$GpuTypeAdreno;-><init>(IIII)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU$GpuTypeAdreno;

    const/16 v2, 0xcb

    invoke-direct {v0, v2, v1, v4, v3}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU$GpuTypeAdreno;-><init>(IIII)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU$GpuTypeAdreno;

    const/16 v2, 0xcd

    invoke-direct {v0, v2, v1, v4, v3}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU$GpuTypeAdreno;-><init>(IIII)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU$GpuTypeAdreno;

    const/16 v2, 0xdc

    invoke-direct {v0, v2, v1, v4, v3}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU$GpuTypeAdreno;-><init>(IIII)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU$GpuTypeAdreno;

    const/16 v2, 0xe1

    invoke-direct {v0, v2, v1, v4, v3}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU$GpuTypeAdreno;-><init>(IIII)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU$GpuTypeAdreno;

    const/16 v2, 0x12e

    invoke-direct {v0, v2, v1, v4, v3}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU$GpuTypeAdreno;-><init>(IIII)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU$GpuTypeAdreno;

    const/16 v2, 0x130

    invoke-direct {v0, v2, v1, v4, v3}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU$GpuTypeAdreno;-><init>(IIII)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU$GpuTypeAdreno;

    const/16 v2, 0x131

    invoke-direct {v0, v2, v1, v4, v3}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU$GpuTypeAdreno;-><init>(IIII)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU$GpuTypeAdreno;

    const/16 v2, 0x132

    invoke-direct {v0, v2, v1, v4, v3}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU$GpuTypeAdreno;-><init>(IIII)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU$GpuTypeAdreno;

    const/16 v2, 0x140

    invoke-direct {v0, v2, v9, v4, v3}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU$GpuTypeAdreno;-><init>(IIII)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU$GpuTypeAdreno;

    const/16 v2, 0x14a

    invoke-direct {v0, v2, v9, v4, v8}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU$GpuTypeAdreno;-><init>(IIII)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU$GpuTypeAdreno;

    const/16 v2, 0x195

    invoke-direct {v0, v2, v9, v4, v7}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU$GpuTypeAdreno;-><init>(IIII)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU$GpuTypeAdreno;

    const/16 v2, 0x1a2

    invoke-direct {v0, v2, v9, v4, v8}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU$GpuTypeAdreno;-><init>(IIII)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU$GpuTypeAdreno;

    const/16 v2, 0x1a4

    invoke-direct {v0, v2, v9, v4, v8}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU$GpuTypeAdreno;-><init>(IIII)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU$GpuTypeAdreno;

    const/16 v2, 0x1ae

    invoke-direct {v0, v2, v9, v4, v5}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU$GpuTypeAdreno;-><init>(IIII)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU$GpuTypeAdreno;

    const/16 v2, 0x1f9

    invoke-direct {v0, v2, v9, v4, v7}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU$GpuTypeAdreno;-><init>(IIII)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU$GpuTypeAdreno;

    const/16 v2, 0x1fa

    invoke-direct {v0, v2, v9, v4, v7}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU$GpuTypeAdreno;-><init>(IIII)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU$GpuTypeAdreno;

    const/16 v2, 0x1fe

    invoke-direct {v0, v2, v9, v4, v8}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU$GpuTypeAdreno;-><init>(IIII)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU$GpuTypeAdreno;

    const/16 v2, 0x212

    invoke-direct {v0, v2, v9, v4, v5}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU$GpuTypeAdreno;-><init>(IIII)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU$GpuTypeAdreno;

    const/16 v11, 0x21c

    invoke-direct {v0, v11, v9, v4, v5}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU$GpuTypeAdreno;-><init>(IIII)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU;->g:Ljava/util/Hashtable;

    const-string v10, "PowerVR"

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v10, v12}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU$GpuTypePowerVR;

    invoke-direct {v0, v2, v1, v4, v3}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU$GpuTypePowerVR;-><init>(IIII)V

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU$GpuTypePowerVR;

    const/16 v2, 0x213

    invoke-direct {v0, v2, v1, v4, v3}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU$GpuTypePowerVR;-><init>(IIII)V

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU$GpuTypePowerVR;

    const/16 v2, 0x217

    invoke-direct {v0, v2, v1, v4, v3}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU$GpuTypePowerVR;-><init>(IIII)V

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU$GpuTypePowerVR;

    invoke-direct {v0, v11, v1, v4, v3}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU$GpuTypePowerVR;-><init>(IIII)V

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU$GpuTypePowerVR;

    const/16 v2, 0x21f

    invoke-direct {v0, v2, v1, v8, v7}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU$GpuTypePowerVR;-><init>(IIII)V

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU$GpuTypePowerVR;

    const/16 v2, 0x220

    invoke-direct {v0, v2, v6, v4, v7}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU$GpuTypePowerVR;-><init>(IIII)V

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU$GpuTypePowerVR;

    invoke-direct {v0, v2, v6, v7, v8}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU$GpuTypePowerVR;-><init>(IIII)V

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU$GpuTypePowerVR;

    const/16 v2, 0x1838

    invoke-direct {v0, v2, v9, v4, v5}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU$GpuTypePowerVR;-><init>(IIII)V

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU;->g:Ljava/util/Hashtable;

    const-string v2, "Nvidia"

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v2, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU$GpuTypeNvidia;

    const/16 v2, 0x9c4

    invoke-direct {v0, v7, v2, v4, v8}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU$GpuTypeNvidia;-><init>(IIII)V

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU;->g:Ljava/util/Hashtable;

    const-string v2, "Immersion"

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v2, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU$GpuTypeImmersion;

    const/16 v2, 0x10

    invoke-direct {v0, v2, v6, v4, v3}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU$GpuTypeImmersion;-><init>(IIII)V

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU;->g:Ljava/util/Hashtable;

    const-string v2, "Vivante"

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v2, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU$GpuTypeVivante;

    const/16 v2, 0x3e8

    invoke-direct {v0, v2, v1, v4, v3}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU$GpuTypeVivante;-><init>(IIII)V

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU$GpuTypeVivante;

    invoke-direct {v0, v1, v1, v4, v3}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU$GpuTypeVivante;-><init>(IIII)V

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU$GpuTypeVivante;

    invoke-direct {v0, v9, v9, v4, v3}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU$GpuTypeVivante;-><init>(IIII)V

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static a(Ljava/lang/String;)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    sget-object v1, Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU;->g:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-static {v0, v1, p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU;->a(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)V

    const/4 v0, 0x1

    :cond_2
    if-nez v0, :cond_3

    invoke-static {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU;->b(Ljava/lang/String;)V

    :cond_3
    invoke-static {}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU;->b()V

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU$GpuType;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU$GpuType;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/ReflectUtils;->classInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU$GpuType;

    invoke-virtual {v0, p2}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU$GpuType;->matchInfo(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_0
    const/4 v1, -0x1

    if-le p2, v1, :cond_1

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU$GpuType;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU$GpuType;->getCode()I

    move-result v2

    invoke-virtual {v1}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU$GpuType;->getCode()I

    move-result v3

    if-lt v2, v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-nez v1, :cond_2

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU$GpuType;

    :cond_2
    sput-object v1, Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU;->d:Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU$GpuType;

    return-void
.end method

.method private static b()V
    .locals 5

    sget-object v0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU;->d:Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU$GpuType;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget v1, Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU;->a:I

    if-lez v1, :cond_1

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU$GpuType;->getSize()I

    move-result v1

    sget v2, Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU;->a:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU$GpuType;->setSize(I)V

    :cond_1
    sget-object v0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU;->d:Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU$GpuType;

    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU$GpuType;->a(Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU$GpuType;)I

    move-result v0

    sput v0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU;->b:I

    sget-object v0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU;->d:Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU$GpuType;

    instance-of v1, v0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU$GpuTypeNvidia;

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU$GpuType;->getCode()I

    move-result v0

    if-le v0, v2, :cond_3

    :cond_2
    sput-boolean v3, Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU;->f:Z

    :cond_3
    const-string v0, "matchType: %s | %s"

    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v4, Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU;->c:Ljava/lang/String;

    aput-object v4, v1, v2

    sget-object v2, Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU;->d:Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU$GpuType;

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/utils/TLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private static b(Ljava/lang/String;)V
    .locals 4

    if-nez p0, :cond_0

    return-void

    :cond_0
    const-string v0, "gc1000"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    new-instance p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU$GpuTypeVivante;

    const/16 v0, 0x3e8

    const/16 v1, 0x7d0

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU$GpuTypeVivante;-><init>(IIII)V

    sput-object p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU;->d:Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU$GpuType;

    :cond_1
    return-void
.end method

.method public static getGpuInfo()Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU;->c:Ljava/lang/String;

    return-object v0
.end method

.method public static getGpuType()Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU$GpuType;
    .locals 4

    sget-object v0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU;->d:Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU$GpuType;

    if-nez v0, :cond_0

    new-instance v0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU$GpuType;

    const/16 v1, 0x7d0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v3, v2}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU$GpuType;-><init>(IIII)V

    sput-object v0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU;->d:Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU$GpuType;

    :cond_0
    sget-object v0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU;->d:Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU$GpuType;

    return-object v0
.end method

.method public static getMaxTextureOptimizedSize()I
    .locals 1

    sget v0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU;->b:I

    return v0
.end method

.method public static getMaxTextureSize()I
    .locals 1

    sget v0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU;->a:I

    return v0
.end method

.method public static init(ILjava/lang/String;)V
    .locals 1

    sget-boolean v0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU;->e:Z

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU;->e:Z

    invoke-static {}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU;->a()V

    sput p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU;->a:I

    sput-object p1, Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU;->c:Ljava/lang/String;

    sget-object p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU;->c:Ljava/lang/String;

    invoke-static {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU;->a(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static isFaceBeautySupported()Z
    .locals 2

    invoke-static {}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU;->getGpuType()Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU$GpuType;

    move-result-object v0

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU$GpuType;->getPerformance()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isLiveStickerSupported()Z
    .locals 2

    invoke-static {}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU;->getGpuType()Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU$GpuType;

    move-result-object v0

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU$GpuType;->getPerformance()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isSupporTurbo()Z
    .locals 1

    sget-boolean v0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU;->f:Z

    return v0
.end method

.method public static lowPerformance()Z
    .locals 1

    invoke-static {}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU;->getGpuType()Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU$GpuType;

    move-result-object v0

    instance-of v0, v0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU$GpuTypeNvidia;

    if-nez v0, :cond_1

    invoke-static {}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU;->getGpuType()Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU$GpuType;

    move-result-object v0

    instance-of v0, v0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU$GpuTypeImmersion;

    if-nez v0, :cond_1

    invoke-static {}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU;->getGpuType()Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU$GpuType;

    move-result-object v0

    instance-of v0, v0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU$GpuTypeVivante;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
