from django.shortcuts import render, get_object_or_404
from django.core.paginator import EmptyPage, PageNotAnInteger, Paginator
from .models import Listing


def index(request):

    # get all published listings, ordered by newest first
    listings = Listing.objects.order_by('-list_date').filter(is_published=True)

    paginator = Paginator(listings, 3)
    page = request.GET.get('page')
    paged_listings = paginator.get_page(page)

    context = {
        'listings': paged_listings
    }

    return render(request, 'listings/listings.html', context)


def listing(request, listing_id):
    # Return 404 error if no object found
    listing = get_object_or_404(Listing, pk=listing_id)
    context = {
        'listing': listing
    }
    return render(request, 'listings/listing.html', context=context)


def search(request):
    return render(request, 'listings/search.html')
