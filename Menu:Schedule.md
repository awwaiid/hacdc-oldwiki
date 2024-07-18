### Schedule

`<strong>`{=html} \< Join our [HacDC Meetup
Group](http://www.meetup.com/hac-dc/#calendar) to stay on top of all our
events \> `</strong>`{=html}

{{#get_file_data: file=events \|format=JSON
\|data=name=name,link=link,start_date=start_date,start_time=start_time,end_date=end_date,end_time=end_time
}} {{#get_file_data: file=log \|format=JSON \|data=updated=updated }}

  Start Time      End Time
  ------------ -- ----------

`<span style="display:inline-block; padding:0 0 0 15em;">`{=html}`<span style="text-decoration:underline;">`{=html}
`<em>`{=html}(schedule reloaded:
`<strong>`{=html}{{#external_value:updated}}`</strong>`{=html})`</em>`{=html}`</span>`{=html}`</span>`{=html}
