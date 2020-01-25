.class final Lorg/lasque/tusdk/core/utils/sqllite/AlbumSqlInfo$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/lasque/tusdk/core/utils/sqllite/AlbumSqlInfo;->sortTitle(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lorg/lasque/tusdk/core/utils/sqllite/AlbumSqlInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lorg/lasque/tusdk/core/utils/sqllite/AlbumSqlInfo;

    check-cast p2, Lorg/lasque/tusdk/core/utils/sqllite/AlbumSqlInfo;

    invoke-virtual {p0, p1, p2}, Lorg/lasque/tusdk/core/utils/sqllite/AlbumSqlInfo$1;->compare(Lorg/lasque/tusdk/core/utils/sqllite/AlbumSqlInfo;Lorg/lasque/tusdk/core/utils/sqllite/AlbumSqlInfo;)I

    move-result p1

    return p1
.end method

.method public compare(Lorg/lasque/tusdk/core/utils/sqllite/AlbumSqlInfo;Lorg/lasque/tusdk/core/utils/sqllite/AlbumSqlInfo;)I
    .locals 1

    iget-object v0, p1, Lorg/lasque/tusdk/core/utils/sqllite/AlbumSqlInfo;->title:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p2, Lorg/lasque/tusdk/core/utils/sqllite/AlbumSqlInfo;->title:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lorg/lasque/tusdk/core/utils/sqllite/AlbumSqlInfo;->title:Ljava/lang/String;

    iget-object p2, p2, Lorg/lasque/tusdk/core/utils/sqllite/AlbumSqlInfo;->title:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, -0x1

    return p1
.end method
