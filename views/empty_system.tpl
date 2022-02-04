<%
include('_header.tpl',
    title=system_name,
    actions={ 'Upload ROM': '/upload/%s' % system },
    nav=dict(zip(('Systems', system_name), ('/', '/system/%s' % system))),
)
%>
    <ul role="list" class="mt-3 grid grid-cols-2 gap-5 sm:gap-6 sm:grid-cols-3 lg:grid-cols-4">
        <li class="col-span-1 shadow dark:shadow-none rounded-md">
            <div class="flex items-center justify-center w-100 h-20 bg-emerald-600 dark:bg-emerald-700 text-white text-sm font-medium rounded-t-md">
                <img loading="lazy" src="/svg/{{ system_info["name" ]}}" class="w-1/2 max-h-20 p-2" :alt="item.fullname">
            </div>
            <div class="flex items-center justify-between border-t border-r border-b border-transparent bg-white dark:bg-emerald-600 rounded-b-md truncate">
                <div class="flex-1 px-4 py-2 text-sm truncate">
                    <p class="text-emerald-700 font-medium dark:text-emerald-200">{{ system_info["manufacturer"] }} / {{ system_info["fullname"] }}</p>
                    <p class="text-xs text-emerald-500 dark:text-emerald-200 dark:text-emerald-300">Released {{ system_info["release"] }}</p>
                </div>
            </div>
        </li>

        <li class="col-span-1 shadow dark:shadow-none bg-slate-700 dark:bg-slate-800 rounded-md grid content-center">
            <span class="text-center text-xs text-bold uppercase text-slate-200 font-medium">Upload ROMs to see them here.</span>
        </li>
    </ul>
% include('_footer.tpl')