.class public final Lorg/lasque/tusdk/core/utils/NativeLibraryHelper;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/lasque/tusdk/core/utils/NativeLibraryHelper$NativeLibType;
    }
.end annotation


# static fields
.field private static a:Lorg/lasque/tusdk/core/utils/NativeLibraryHelper;


# instance fields
.field private b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/lasque/tusdk/core/utils/NativeLibraryHelper;->b:Ljava/util/HashMap;

    return-void
.end method

.method public static shared()Lorg/lasque/tusdk/core/utils/NativeLibraryHelper;
    .locals 1

    sget-object v0, Lorg/lasque/tusdk/core/utils/NativeLibraryHelper;->a:Lorg/lasque/tusdk/core/utils/NativeLibraryHelper;

    if-nez v0, :cond_0

    new-instance v0, Lorg/lasque/tusdk/core/utils/NativeLibraryHelper;

    invoke-direct {v0}, Lorg/lasque/tusdk/core/utils/NativeLibraryHelper;-><init>()V

    sput-object v0, Lorg/lasque/tusdk/core/utils/NativeLibraryHelper;->a:Lorg/lasque/tusdk/core/utils/NativeLibraryHelper;

    :cond_0
    sget-object v0, Lorg/lasque/tusdk/core/utils/NativeLibraryHelper;->a:Lorg/lasque/tusdk/core/utils/NativeLibraryHelper;

    return-object v0
.end method


# virtual methods
.method public loadLibrary(Lorg/lasque/tusdk/core/utils/NativeLibraryHelper$NativeLibType;)V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/NativeLibraryHelper;->b:Ljava/util/HashMap;

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/utils/NativeLibraryHelper$NativeLibType;->libName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/NativeLibraryHelper;->b:Ljava/util/HashMap;

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/utils/NativeLibraryHelper$NativeLibType;->libName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/System;->load(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/lasque/tusdk/core/utils/NativeLibraryHelper$NativeLibType;->libName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public mapLibrary(Lorg/lasque/tusdk/core/utils/NativeLibraryHelper$NativeLibType;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/NativeLibraryHelper;->b:Ljava/util/HashMap;

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/utils/NativeLibraryHelper$NativeLibType;->libName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
